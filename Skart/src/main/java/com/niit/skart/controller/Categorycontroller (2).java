package com.niit.skart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.skartbackend.dao.Categorydao;
import com.niit.skartbackend.model.Category;

@Controller
public class Categorycontroller {

	@Autowired
	private Categorydao categorydao;

	@Qualifier(value = "categorydao")
	public void setCategorydao(Categorydao ps) {
		this.categorydao = ps;
	}

	/*
	 * @RequestMapping(value="/onLoad", method= RequestMethod.GET) public String
	 * onLoad(Model model){ System.out.println("onload");
	 * model.addAttribute("category", new Category());
	 * model.addAttribute("categoryList", this.categorydao.list()); return
	 * "adminhome"; }
	 */

	@RequestMapping(value = "/categorylist", method = RequestMethod.GET)
	public String listCategorys(Model model) {
		System.out.println("am in list Category");
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categorydao.list());
		return "categorylist";
	}

	@RequestMapping(value= "/categorylist/add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category){
		
		System.out.println("Add controller");

			categorydao.saveOrUpdate(category);
		
		return "redirect:/categorylist";
		
	}


	@RequestMapping("categorylist/edit/{id}")
	public String editCategory(@PathVariable("id") String id, Model model){
		System.out.println("editcategory");
	    model.addAttribute("category", this.categorydao.get(id));
	    model.addAttribute("listcategorys", this.categorydao.list());
	    return "categorylist";

	}
	
	@ModelAttribute("category")
	public Category getObject()
	{
		
		return new Category() ;
	}
	
	
	
	/*
	 * @RequestMapping("/categorylist/add") public ModelAndView
	 * addCategory(@ModelAttribute Category category) {
	 * categorydao.save(category); return new ModelAndView("/categorylist"); }
	 */

	/*
	 * @RequestMapping(value="/categorylist/add", method = RequestMethod.POST)
	 * 
	 * public String addCategory(@ModelAttribute("category") Category category){
	 * System.out.println("add category"); categorydao.save(category); return
	 * "redirect:/categorylist";
	 * 
	 * }
	 */

	@RequestMapping("categorylist/remove/{id}")
	public String removeProduct(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			System.out.println(id);
			categorydao.delete(id);
			
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/categorylist";
	}

	/*
	 * @RequestMapping("categorylist/edit/{id}") public int
	 * editCategory(@PathVariable("id") int id, Model model){
	 * System.out.println("editCategory"); model.addAttribute("category",
	 * this.categorydao.get(id)); model.addAttribute("listCategorys",
	 * this.categorydao.list()); return "categorylist";
	 * 
	 * }
	 */

	/*
	 * @RequestMapping("categorylist/edit/{id}") public ModelAndView
	 * editCategory(@ModelAttribute Category category) {
	 * 
	 * categorydao.update(category); List<Category> categoryList =
	 * categorydao.list(); ModelAndView mv = new
	 * ModelAndView("redirect:/categorylist"); mv.addObject("categoryList",
	 * categoryList); return mv; }
	 */

	/*
	 * @RequestMapping("categorylist/edit/{id}") public ModelAndView
	 * editCategory(@ModelAttribute Category category) {
	 * categorydao.update(category); return new ModelAndView("/categorylist"); }
	 */

	/*
	 * @RequestMapping("/categorylist/remove/{id}") public ModelAndView
	 * delete(@ModelAttribute Category category) { System.out.println(
	 * "am in delete Controller"); categorydao.delete(category.getId());
	 * System.out.println(category.getId()); ModelAndView mv = new
	 * ModelAndView("/categorylist/remove/{id}");
	 * 
	 * mv.addObject("categoryList",); return new ModelAndView("/categorylist");
	 * }
	 */

	/*
	 * @RequestMapping("/categorylist") public ModelAndView getAllCategories() {
	 * 
	 * System.out.println("am in category controller");
	 * 
	 * List<Category> categoryList = categorydao.list(); System.out.println();
	 * ModelAndView mv = new ModelAndView("/categorylist"); for(Category c
	 * :categoryList) { System.out.println(c.getId());
	 * System.out.println(c.getName()); System.out.println(c.getDescription());
	 * } mv.addObject("categoryList", categoryList);
	 * 
	 * return mv;
	 * 
	 * 
	 * }
	 */

}
