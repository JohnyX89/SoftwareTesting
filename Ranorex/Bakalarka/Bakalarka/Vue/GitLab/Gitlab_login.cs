﻿///////////////////////////////////////////////////////////////////////////////
//
// This file was automatically generated by RANOREX.
// DO NOT MODIFY THIS FILE! It is regenerated by the designer.
// All your modifications will be lost!
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
using Ranorex.Core.Testing;
using Ranorex.Core.Repository;

namespace Bakalarka.Vue.GitLab
{
#pragma warning disable 0436 //(CS0436) The type 'type' in 'assembly' conflicts with the imported type 'type2' in 'assembly'. Using the type defined in 'assembly'.
    /// <summary>
    ///The Gitlab_login recording.
    /// </summary>
    [TestModule("6f1b6486-dd99-4714-8a45-283eeac405e6", ModuleType.Recording, 1)]
    public partial class Gitlab_login : ITestModule
    {
        /// <summary>
        /// Holds an instance of the global::Bakalarka.BakalarkaRepository repository.
        /// </summary>
        public static global::Bakalarka.BakalarkaRepository repo = global::Bakalarka.BakalarkaRepository.Instance;

        static Gitlab_login instance = new Gitlab_login();

        /// <summary>
        /// Constructs a new instance.
        /// </summary>
        public Gitlab_login()
        {
        }

        /// <summary>
        /// Gets a static instance of this recording.
        /// </summary>
        public static Gitlab_login Instance
        {
            get { return instance; }
        }

#region Variables

#endregion

        /// <summary>
        /// Starts the replay of the static recording <see cref="Instance"/>.
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCode("Ranorex", global::Ranorex.Core.Constants.CodeGenVersion)]
        public static void Start()
        {
            TestModuleRunner.Run(Instance);
        }

        /// <summary>
        /// Performs the playback of actions in this recording.
        /// </summary>
        /// <remarks>You should not call this method directly, instead pass the module
        /// instance to the <see cref="TestModuleRunner.Run(ITestModule)"/> method
        /// that will in turn invoke this method.</remarks>
        [System.CodeDom.Compiler.GeneratedCode("Ranorex", global::Ranorex.Core.Constants.CodeGenVersion)]
        void ITestModule.Run()
        {
            Mouse.DefaultMoveTime = 300;
            Keyboard.DefaultKeyPressTime = 20;
            Delay.SpeedFactor = 1.00;

            Init();

            Report.Log(ReportLevel.Info, "Keyboard", "Key sequence '{LShiftKey down}{LMenu up}' with focus on 'SignInGitLab'.", repo.SignInGitLab.SelfInfo, new RecordItemIndex(0));
            repo.SignInGitLab.Self.EnsureVisible();
            Keyboard.Press("{LShiftKey down}{LMenu up}");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Down item 'SignInGitLab.UserLogin' at 155;6.", repo.SignInGitLab.UserLoginInfo, new RecordItemIndex(1));
            repo.SignInGitLab.UserLogin.MoveTo("155;6");
            Mouse.ButtonDown(System.Windows.Forms.MouseButtons.Left);
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Keyboard", "Key sequence 'burdy{LShiftKey down}8910{LShiftKey up}{LControlKey down}{RMenu down}{Vkey}{RMenu up}{LControlKey up}gmail.com' with focus on 'SignInGitLab.UserLogin'.", repo.SignInGitLab.UserLoginInfo, new RecordItemIndex(2));
            repo.SignInGitLab.UserLogin.PressKeys("burdy{LShiftKey down}8910{LShiftKey up}{LControlKey down}{RMenu down}{Vkey}{RMenu up}{LControlKey up}gmail.com");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Down item 'SignInGitLab.UserLogin' at 103;119.", repo.SignInGitLab.UserLoginInfo, new RecordItemIndex(3));
            repo.SignInGitLab.UserLogin.MoveTo("103;119");
            Mouse.ButtonDown(System.Windows.Forms.MouseButtons.Left);
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Keyboard", "Key sequence 'aaaa{LShiftKey down}1234{LShiftKey up}{Return}' with focus on 'SignInGitLab'.", repo.SignInGitLab.SelfInfo, new RecordItemIndex(4));
            repo.SignInGitLab.Self.EnsureVisible();
            Keyboard.Press("aaaa{LShiftKey down}1234{LShiftKey up}{Return}");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Wait", "Waiting 10s to exist. Associated repository item: 'SignInGitLab.HttpsGitlabComBurdy8910'", repo.SignInGitLab.HttpsGitlabComBurdy8910Info, new ActionTimeout(10000), new RecordItemIndex(5));
            repo.SignInGitLab.HttpsGitlabComBurdy8910Info.WaitForExists(10000);
            
            Report.Screenshot(ReportLevel.Info, "User", "GitLabLogedIn", null, false, new RecordItemIndex(6));
            
        }

#region Image Feature Data
#endregion
    }
#pragma warning restore 0436
}
