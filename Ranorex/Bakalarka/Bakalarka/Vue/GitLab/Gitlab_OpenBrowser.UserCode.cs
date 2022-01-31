﻿///////////////////////////////////////////////////////////////////////////////
//
// This file was automatically generated by RANOREX.
// Your custom recording code should go in this file.
// The designer will only add methods to this file, so your custom code won't be overwritten.
// http://www.ranorex.com
//
///////////////////////////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;
using System.Drawing;
using System.Threading;
using WinForms = System.Windows.Forms;

using Ranorex;
using Ranorex.Core;
using Ranorex.Core.Repository;
using Ranorex.Core.Testing;

namespace Bakalarka.Vue.GitLab
{
    public partial class Gitlab_OpenBrowser
    {
        /// <summary>
        /// This method gets called right after the recording has been started.
        /// It can be used to execute recording specific initialization code.
        /// </summary>
        private void Init()
        {
            // Your recording specific initialization code goes here.
        }
        
        public void OpenBrowserPrivate(string URL, string Browser)
		{
			string FFFlag="-private-window";
			string IEFlag="-private";
			string CHFlag="-incognito";
			string flag="";
			        	
			if(Browser=="Firefox")
			       	flag=FFFlag;
			else if(Browser=="Chrome")
			       	flag=CHFlag;
			else if(Browser=="IE")
			       	flag=IEFlag;
			else
			       	flag="";
			   
			Host.Local.OpenBrowser(URL,Browser,flag,false,false);
		}

    }
}