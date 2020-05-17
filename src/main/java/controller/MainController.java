package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pojo.*;
import service.impl.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    private UserService userService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private ItemService itemService;

    @Autowired
    private SupplierService supplierService;

    @Autowired
    private HouseService houseService;

    @Autowired
    private InService inService;

    @Autowired
    private SaleService saleService;
    /**
     * 处理默认首页
     * @return
     */
    @RequestMapping("/")
    public String toLogin(){
        return "login";
    }

    /**
     * 处理登录请求
     * @param userid
     * @param request
     * @return
     */
    @RequestMapping("/login")
    public ModelAndView login(String userid,String userpassword,HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        Integer userId = Integer.parseInt(userid);
        Employee emp = userService.getAuthority(userId,userpassword);
        if (emp != null) {
            mv.addObject("emp", emp);
            request.getSession().setAttribute("longEmp", emp);
            mv.setViewName("index");
        }else {
            mv.setViewName("fail");
        }
        return mv;
    }

    /**
     * 处理返回首页请求
     * @param request
     * @return
     */
    @RequestMapping("/toLogin")
    public ModelAndView toLogin(HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        Employee employee = (Employee) request.getSession().getAttribute("longEmp");
        mv.addObject("emp",employee);
        mv.setViewName("index");
        return mv;
    }

    /**
     * 处理查询员工列表请求
     * @return
     */
    @RequestMapping("/queryEmp")
    public ModelAndView queryEmp(){
        ModelAndView mv  = new ModelAndView();
        List<Employee> employeeList = userService.findEmpList();
        Integer empCount = userService.countTotalEmp();
        mv.addObject("employeeList",employeeList);
        mv.addObject("totalCount",empCount);
        mv.setViewName("empList");
        return mv;
    }

    /**
     * 处理查询客户请求
     * @return
     */
    @RequestMapping("/queryCustomer")
    public ModelAndView queryCustomer(){
        ModelAndView mv = new ModelAndView();
        List<Customer> customerList = customerService.findCustomerList();
        mv.addObject("customerList",customerList);
        mv.setViewName("customerList");
        return mv;
    }

    //查询并展示全部商品
    @RequestMapping("/queryItems")
    public ModelAndView queryItems(){
        ModelAndView mv = new ModelAndView();
        List<ItemCustom> itemCustomList = itemService.findItemVoList();
        Integer count = itemService.countTotalItem();
        mv.addObject("totalCount",count);
        mv.addObject(itemCustomList);
        mv.setViewName("itemsList");
        return mv;
    }

    @RequestMapping("/querySuppliers")
    public ModelAndView querySuppliers(){
        ModelAndView mv = new ModelAndView();
        List<Supplier> suppliersList =supplierService.findSupplierList();
        mv.addObject("suppliersList",suppliersList);
        mv.setViewName("suppliersList");
        return mv;
    }

    @RequestMapping("/queryHouses")
    public ModelAndView queryHouses(){
        ModelAndView mv = new ModelAndView();
        List<House> housesList =houseService.findHouseList();
        mv.addObject("housesList",housesList);
        mv.setViewName("housesList");
        return mv;
    }
    @RequestMapping("/queryIns")
    public ModelAndView queryIns(){
        ModelAndView mv = new ModelAndView();
        List<InCustom> inCustomList = inService.findInCustomList();
        mv.addObject("inCustomList",inCustomList);
        mv.setViewName("insList");
        return mv;
    }
    @RequestMapping("/querySales")
    public ModelAndView querySales(){
        ModelAndView mv = new ModelAndView();
        List<SaleCustom> saleCustomList = saleService.findSaleCustomList();
        mv.addObject("saleCustomList",saleCustomList);
        mv.setViewName("salesList");
        return mv;
    }

    /**
     * 处理修改员工信息请求
     * @param model
     * @param userId
     * @return
     */
    @RequestMapping(value = "/editEmp",method = {RequestMethod.GET,RequestMethod.POST})
    public String editEmp(Model model, @RequestParam(value = "id",required = true) Integer userId){
        Employee employee= userService.findEmpById(userId);
        model.addAttribute("employee",employee);
        model.addAttribute("editType",0);
        return "edit";
    }

    /**
     * 处理修改员工信息提交请求
     * @param employee
     * @return
     */
    @RequestMapping(value = "/editEmpSubmit")
    public String editEmpSubmit(@ModelAttribute("employee") Employee employee){
        userService.updateEmp(employee);
        return "success";
    }

    /**
     * 处理修改客户信息请求
     * @param model
     * @param customerId
     * @return
     */
    @RequestMapping(value = "/editCustomer",method = {RequestMethod.GET,RequestMethod.POST})
    public String editCustomer(Model model, @RequestParam(value = "id",required = true) Integer customerId){
        Customer customer = customerService.findCustomerById(customerId);
        model.addAttribute("customer",customer);
        model.addAttribute("editType",1);
        return "edit";
    }

    /**
     * 处理修改客户信息提交请求
     * @param customer
     * @return
     */
    @RequestMapping(value = "/editCustomerSubmit")
    public String editCustomerSubmit(@ModelAttribute("customer") Customer customer){
        try {
            customerService.updateCustomer(customer);
        }catch (DataAccessException e){
            return "fail";
        }

        return "success";
    }

    /**
     * 处理修改商品
     * @return
     */
    @RequestMapping("/editItem")
    public String editItems(Model model,@RequestParam(value = "id",required = true) Integer itemId){
        Item item = itemService.findItemById(itemId);
        List<Supplier> supplierList = supplierService.findSupplierList();
        List<House> houseList = houseService.findHouseList();
        model.addAttribute(supplierList);
        model.addAttribute(houseList);
        model.addAttribute("item",item);
        model.addAttribute("editType",2);
        return "edit";
    }

    @RequestMapping("/editItemSubmit")
    public String editItemSubmit(@ModelAttribute("item") Item item){
        try {
            itemService.updateItem(item);
        }catch (DataAccessException e){
            return "fail";
        }
        return "success";
    }

    @RequestMapping("/editSupplier")
    public String editSupplier(Model model,@RequestParam(value = "id",required = true)Integer supplierId){
        Supplier supplier = supplierService.findSupplierById(supplierId);
        model.addAttribute("supplier",supplier);
        model.addAttribute("editType",3);
        return "edit";
    }

    @RequestMapping("/editSupplierSubmit")
    public String editSupplierSubmit(@ModelAttribute("supplier") Supplier supplier){
        try {
            supplierService.updateSupplier(supplier);
        }catch (DataAccessException e){
            return "fail";
        }

        return "success";
    }

    @RequestMapping("/editHouse")
    public String editHouse(Model model,@RequestParam(value = "id",required = true)Integer houseId){
        House house = houseService.findHouseById(houseId);
        model.addAttribute("house",house);
        model.addAttribute("editType",4);
        return "edit";
    }

    @RequestMapping("/editHouseSubmit")
    public String editHouseSubmit(@ModelAttribute("house") House house){
        try {
            houseService.updateHouse(house);
        }catch (DataAccessException e){
            return "fail";
        }

        return "success";
    }

    @RequestMapping("/editIn")
    public String editIn(Model model,@RequestParam(value = "id",required = true)Integer inId){
        In in = inService.findInById(inId);
        List<Item> itemList = itemService.findItemList();
        List<Supplier> supplierList = supplierService.findSupplierList();
        model.addAttribute(itemList);
        model.addAttribute(supplierList);
        model.addAttribute("ins",in);
        model.addAttribute("editType",5);
        return "edit";
    }

    @RequestMapping("/editInSubmit")
    public String editInSubmit(@ModelAttribute("ins") In in){
        try {
            inService.updateIn(in);
        }catch (DataAccessException e){
            return "fail";
        }

        return "success";
    }
    @RequestMapping("/editSale")
    public String editSale(Model model,@RequestParam(value = "id",required = true)Integer saleId){
        Sale sale = saleService.findSaleById(saleId);
        List<Employee> employeeList = userService.findEmpList();
        List<Item> itemList = itemService.findItemList();
        List<Customer> customerList = customerService.findCustomerList();
        model.addAttribute(employeeList);
        model.addAttribute(itemList);
        model.addAttribute(customerList);
        model.addAttribute("sale",sale);
        model.addAttribute("editType",6);
        return "edit";
    }

    @RequestMapping("/editSaleSubmit")
    public String editSaleSubmit(@ModelAttribute("sale") Sale sale){
        try {
            saleService.updateSale(sale);
        }catch (DataAccessException e){
            return "fail";
        }

        return "success";
    }

    /**
     * 处理新增员工请求
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/addEmp")
    public ModelAndView addEmp(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView();
        mv.addObject("addType",0);
        mv.setViewName("add");
        return mv;
    }

    /**
     * 处理新增员工提交请求
     * @param employee
     * @return
     */
    @RequestMapping("/addEmpSubmit")
    public String  addEmpSubmit(@ModelAttribute("employee") Employee employee){
        try {
            userService.insertEmp(employee);
        }catch (DataAccessException e){
            return "fail";
        }

        return "success";
    }

    /**
     * 处理新增客户请求
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/addCustomer")
    public ModelAndView addCustomer(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mv = new ModelAndView();
        mv.addObject("addType",1);
        mv.setViewName("add");
        return mv;
    }

    /**
     * 处理新增员工提交请求
     * @param customer
     * @return
     */
    @RequestMapping("/addCustomerSubmit")
    public String addCustomerSubmit(@ModelAttribute("customer") Customer customer){
        try {
            customerService.insertCustomer(customer);
        }catch (DataAccessException e){
            return "fail";
        }

        return "success";
    }

    @RequestMapping("/addItem")
    public ModelAndView addItem(){
        ModelAndView mv = new ModelAndView();
        List<Supplier> supplierList = supplierService.findSupplierList();
        mv.addObject("supplierList",supplierList);
        List<House> houseList = houseService.findHouseList();
        mv.addObject("houseList",houseList);
        mv.addObject("addType",2);
        mv.setViewName("add");
        return mv;
    }

    @RequestMapping("/addItemSubmit")
    public String addItemSubmit(@ModelAttribute("item")Item item){
        try {
            itemService.insertItem(item);
        }catch (DataAccessException e){
            return "fail";
        }
        return "success";
    }
    @RequestMapping("/addSupplier")
    public ModelAndView addSupplier(){
        ModelAndView mv = new ModelAndView();
        mv.addObject("addType",3);
        mv.setViewName("add");
        return mv;
    }

    @RequestMapping("/addSupplierSubmit")
    public String addSupplierSubmit(@ModelAttribute("supplier")Supplier supplier){
        try {
            supplierService.insertSupplier(supplier);
        }catch (DataAccessException e){
            return "fail";
        }

        return "success";
    }
    @RequestMapping("/addHouse")
    public ModelAndView addHouse(){
        ModelAndView mv = new ModelAndView();
        mv.addObject("addType",4);
        mv.setViewName("add");
        return mv;
    }

    @RequestMapping("/addHouseSubmit")
    public String addHouseSubmit(@ModelAttribute("house") House house){
        try {
            houseService.insertHouse(house);
        }catch (DataAccessException e){
            return "fail";
        }

        return "success";
    }

    @RequestMapping("/addIn")
    public ModelAndView addIn(){
        ModelAndView mv = new ModelAndView();
        List<Item> itemList = itemService.findItemList();
        List<Supplier> supplierList = supplierService.findSupplierList();
        mv.addObject("itemList",itemList);
        mv.addObject("supplierList",supplierList);
        mv.addObject("addType",5);
        mv.setViewName("add");
        return mv;
    }

    @RequestMapping("/addInSubmit")
    public String addInSubmit(@ModelAttribute("in") In in){
        try {
            inService.insertIn(in);
        }catch (DataAccessException e){
            return "fail";
        }

        return "success";
    }
    @RequestMapping("/addSale")
    public ModelAndView addSale(HttpServletRequest request){
        ModelAndView mv = new ModelAndView();
        List<Item> itemList = itemService.findItemList();
        List<Employee> employeeList = userService.findEmpList();
        List<Customer> customerList = customerService.findCustomerList();
        Employee employee = (Employee) request.getSession().getAttribute("longEmp");
        mv.addObject(itemList);
        mv.addObject(employeeList);
        mv.addObject(customerList);
        mv.addObject("operator",employee);
        mv.addObject("addType",6);
        mv.setViewName("add");
        return mv;
    }

    @RequestMapping("/addSaleSubmit")
    public String addSaleSubmit(@ModelAttribute("sale") Sale sale){
        try {
            saleService.insertSale(sale);
        }catch (DataAccessException e){
            return "fail";
        }

        return "success";
    }

    /**
     * 处理删除员工请求
     * @param empid
     * @return
     */
    @RequestMapping("/deleteEmps")
    public String deleteEmp(Integer[] empid){
        try {
            userService.deleteEmps(empid);
        }catch (DataAccessException e){
            return "fail";
        }
        return "success";
    }

    /**
     * 处理删除客户信息请求
     * @param customerid
     * @return
     */
    @RequestMapping("/deleteCustomers")
    public String deleteCustomers(Integer[] customerid){
        try {
            customerService.deleteCustomers(customerid);
        }catch (DataAccessException e){
            return "fail";
        }
        return "success";
    }

    @RequestMapping("/deleteItems")
    public String deleteItems(Integer[] itemid){
        try {
            itemService.deleteItems(itemid);
        }catch (DataAccessException e){
            return "fail";
        }
        return "success";
    }

    @RequestMapping("/deleteSuppliers")
    public String deleteSuppliers(Integer[] supplierid){
        try {
            supplierService.deleteSuppliers(supplierid);
        }catch (DataAccessException e){
            return "fail";
        }

        return "success";
    }

    @RequestMapping("/deleteHouses")
    public String deleteHouses(Integer[] houseid){
        try {
            houseService.deleteHouses(houseid);
        }catch (DataAccessException e){
            return "fail";
        }

        return "success";
    }

    @RequestMapping("/deleteIns")
    public String deleteIns(Integer[] inid){
        try {
            inService.deleteIns(inid);
        }catch (DataAccessException e){
            return "fail";
        }

        return "success";
    }

    @RequestMapping("/deleteSales")
    public String deleteSales(Integer[] saleid){
        try {
            saleService.deleteSales(saleid);
        }catch (DataAccessException e){
            return "fail";
        }
        return "success";
    }

    @RequestMapping("/queryEmpWithOption")
    public ModelAndView queryEmpWithOption(String option){
        ModelAndView mv = new ModelAndView();
        try {
            List<Employee> employeeList = userService.findEmpListWithOption(option);
            Integer count = employeeList.size();
            mv.addObject("totalCount",count);
            mv.addObject(employeeList);
            if (count == 0){
                mv.setViewName("fail");
                return mv;
            }
        }catch (DataAccessException e){
            mv.setViewName("fail");
            return mv;
        }
        mv.setViewName("empList");
        return mv;
    }

    @RequestMapping("/queryItemWithOption")
    public ModelAndView queryItemWithOption(String option){
        ModelAndView mv = new ModelAndView();
        try {
            List<ItemCustom> itemCustomList = itemService.findItemWithOption(option);
            Integer count = itemCustomList.size();
            mv.addObject("totalCount",count);
            mv.addObject(itemCustomList);
            if (count == 0){
                mv.setViewName("fail");
                return mv;
            }
        }catch (DataAccessException e){
            mv.setViewName("fail");
            return mv;
        }
        mv.setViewName("itemsList");
        return mv;
    }

    @RequestMapping("/queryHouseWithOption")
    public ModelAndView queryHouseWithOption(String option){
        ModelAndView mv = new ModelAndView();
        try {
            List<House> houseList = houseService.findHouseListWithOption(option);
            Integer count = houseList.size();
            mv.addObject("totalCount",count);
            mv.addObject("housesList",houseList);
            if (count == 0){
                mv.setViewName("fail");
                return mv;
            }
        }catch (DataAccessException e){
            mv.setViewName("fail");
            return mv;
        }
        mv.setViewName("housesList");
        return mv;
    }

    @RequestMapping("/queryCustomerWithOption")
    public ModelAndView queryCustomerWithOption(String option){
        ModelAndView mv = new ModelAndView();
        try {
            List<Customer> customerList = customerService.findCustomerListWithOption(option);
            Integer count = customerList.size();
            mv.addObject("totalCount",count);
            mv.addObject(customerList);
            if (count == 0){
                mv.setViewName("fail");
                return mv;
            }
        }catch (DataAccessException e){
            mv.setViewName("fail");
            return mv;
        }
        mv.setViewName("customerList");
        return mv;
    }

    @RequestMapping("/querySupplierWithOption")
    public ModelAndView querySupplierWithOption(String option){
        ModelAndView mv = new ModelAndView();
        try {
            List<Supplier> supplierList = supplierService.findSupplierListWithOption(option);
            int count = supplierList.size();
            mv.addObject("totalCount",count);
            mv.addObject("suppliersList",supplierList);
            if (count == 0){
                mv.setViewName("fail");
                return mv;
            }
        }catch (DataAccessException e){
            mv.setViewName("fail");
            return mv;
        }
        mv.setViewName("suppliersList");
        return mv;
    }

}
