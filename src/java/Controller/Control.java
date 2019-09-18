package Controller;

import Config.Connection;
import Entity.Persons;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Control {
    Connection conn = new Connection();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(conn.Connect());
    ModelAndView MAV = new ModelAndView();
    int id;
    List list;
    
    @RequestMapping("index.htm")
    public ModelAndView List(){
        String query = "SELECT * FROM persons";
        list = this.jdbcTemplate.queryForList(query);
        MAV.addObject("list", list);
        MAV.setViewName("index");
        return MAV;
    }
    
    @RequestMapping(value = "add.htm", method = RequestMethod.GET)
    public ModelAndView Add(){
        MAV.addObject(new Persons());
        MAV.setViewName("add");
        return MAV;
    }
    
    @RequestMapping(value = "add.htm", method = RequestMethod.POST)
    public ModelAndView Add(Persons p){
        String query = "INSERT INTO persons(ID, Name, Mobile, countryID, cityID) VALUES(?,?,?,(select ID from countries where (ID=?)),(select ID from cities where (ID=?)))";
        this.jdbcTemplate.update(
                query,
                p.getId(), 
                p.getName(), 
                p.getMobile(), 
                p.getCountry_id(), 
                p.getCity_id());
        return new ModelAndView("redirect://index.htm");
    }
    
    @RequestMapping(value = "edit.htm", method = RequestMethod.GET)
    public ModelAndView Edit(HttpServletRequest request){
        id = Integer.parseInt(request.getParameter("id"));
        String query = "SELECT * FROM persons WHERE ID="+id;
        list = this.jdbcTemplate.queryForList(query);
        MAV.addObject("list", list);
        MAV.setViewName("edit");
        return MAV;
    }
    
    @RequestMapping(value = "edit.htm", method = RequestMethod.POST)
    public ModelAndView Edit(Persons p){
        String query = "UPDATE persons SET ID=?, Name=?, Mobile=?, countryID=(select ID from countries where (ID=?)), cityID=(select ID from cities where (ID=?)) WHERE ID="+id;
        this.jdbcTemplate.update(
                query,
                p.getId(), 
                p.getName(), 
                p.getMobile(), 
                p.getCountry_id(), 
                p.getCity_id());
        return new ModelAndView("redirect://index.htm");
    }
    
    @RequestMapping(value = "delete.htm")
    public ModelAndView Delete(HttpServletRequest request){
        id = Integer.parseInt(request.getParameter("id"));
        String query = "DELETE FROM persons WHERE ID="+id;
        this.jdbcTemplate.update(query);
        return new ModelAndView("redirect://index.htm");
    }
    
    @RequestMapping(value= "search.htm", method = RequestMethod.GET)
    public ModelAndView Search(String search){
        String query = "SELECT * FROM persons WHERE CountryID = (SELECT ID FROM countries WHERE ID=?) OR CountryID = (SELECT ID FROM countries WHERE Name=?)";
        list = this.jdbcTemplate.queryForList(query, search, search);
        MAV.addObject("list", list);
        System.out.println(list);
        MAV.setViewName("search");
        return MAV;
    }
}
