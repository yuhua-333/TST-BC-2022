package controller;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import entity.PageBean;
import entity.SList;
import service.SListService;

@SessionAttributes("currentUser")
@Controller
public class SListController {
	@Resource
    private SListService slistService;
	  @RequestMapping("/slistmain")
		public String main(@RequestParam(value="currentPage", defaultValue="1", required=false)int currentPage,Model model){

			PageBean<SList> pagemsg = slistService.findByPage(currentPage);
			model.addAttribute("pagemsg", pagemsg);

			List<SList> slists = slistService.selectList();
			model.addAttribute("slistLists", slists);

			return "slistmain";
		}

}
