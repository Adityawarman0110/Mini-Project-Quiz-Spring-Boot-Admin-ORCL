package net.orclmvn;


import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class MasterController {
	
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private AssetService assetService;
	
	@RequestMapping("/")
	public String main(Model model) {
		return "index";
	}
	
	
	
	
//	@RequestMapping("/")
//	public String membermain(Model model) {
//		List<Member> listMember = memberService.listAll();
//		model.addAttribute("listMember", listMember);
//		return "member";
//	}
	
	@RequestMapping("/member")
	public String member(Model model) {
		List<Member> listMember = memberService.listAll();
		model.addAttribute("listMember", listMember);
		return "member";
	}
	
	@RequestMapping(value = "memberadd", method = RequestMethod.GET)
	public String memberadd(ModelMap model) {
		Member member = new Member();
		model.addAttribute("member", member);
		return "memberadd";
	}
	
	@RequestMapping(value = "savemember", method = RequestMethod.POST)
	public String SaveMember(@Valid Member member, BindingResult result, 
			ModelMap model, RedirectAttributes redirectattributes) {
		if (result.hasErrors()) {
			return "memberadd";
		}
		memberService.save(member);
		return "memberadded";
	}
	
	@RequestMapping(value = "/updateMember/{id}", method = RequestMethod.GET)
    public String showEditMemberPage(@PathVariable(name = "id") int id, Model model) {
		Member member = memberService.get(id);
		model.addAttribute("member", member);
        return "memberupdate";
	}
	
	@RequestMapping(value = "/updateMember/update", method = RequestMethod.POST)
	public String UpdateMember(@Valid Member member, BindingResult result, 
			ModelMap model, RedirectAttributes redirectattributes) {
		if (result.hasErrors()) {
			return "memberupdate";
		}
		memberService.save(member);
		return "memberupdated";
	}
	
	@RequestMapping(value = "/deleteMember/{id}", method = RequestMethod.GET)
	public String deleteForm(@PathVariable(name = "id") int id) {
		memberService.delete(id);
		return "memberdeleted";
	}
	
	@RequestMapping("/asset")
	public String asset(Model model) {
		List<Asset> listAsset = assetService.listAll();
		model.addAttribute("listAsset", listAsset);
		return "asset";
	}
	
	@RequestMapping(value = "assetadd", method = RequestMethod.GET)
	public String assetadd(ModelMap model) {
		Asset asset = new Asset();
		model.addAttribute("asset", asset);
		return "assetadd";
	}
	
	@RequestMapping(value = "saveasset", method = RequestMethod.POST)
	public String SaveAsset(@Valid Asset asset, BindingResult result, 
			ModelMap model, RedirectAttributes redirectattributes) {
		if (result.hasErrors()) {
			return "assetadd";
		}
		assetService.save(asset);
		return "assetadded";
	}
	
	@RequestMapping(value = "/updateAsset/{id}", method = RequestMethod.GET)
    public String showEditAssetPage(@PathVariable(name = "id") int id, Model model) {
		Asset asset = assetService.get(id);
		model.addAttribute("asset", asset);
        return "assetupdate";
	}
	
	@RequestMapping(value = "/updateAsset/update", method = RequestMethod.POST)
	public String UpdateAsset(@Valid Asset asset, BindingResult result, 
			ModelMap model, RedirectAttributes redirectattributes) {
		if (result.hasErrors()) {
			return "assetupdate";
		}
		assetService.save(asset);
		return "assetupdated";
	}
	
	@RequestMapping(value = "/deleteAsset/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable(name = "id") int id) {
		assetService.delete(id);
		return "assetdeleted";
	}
	
	@ModelAttribute("category")
	public List<String> initializeSections() {

		List<String> category = new ArrayList<String>();
		category.add("Asset Tetap");
		category.add("Asset Bergerak");
		return category;
	}
	
	
}

