﻿using Microsoft.AspNetCore.Mvc;

namespace WebApplication5.Controllers
{
    public class HomeController1 : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
