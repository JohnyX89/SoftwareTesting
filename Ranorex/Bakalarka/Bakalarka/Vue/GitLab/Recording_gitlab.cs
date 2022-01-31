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
    ///The Recording_gitlab recording.
    /// </summary>
    [TestModule("09008324-7666-4a4c-93cf-0355e43cf089", ModuleType.Recording, 1)]
    public partial class Recording_gitlab : ITestModule
    {
        /// <summary>
        /// Holds an instance of the global::Bakalarka.BakalarkaRepository repository.
        /// </summary>
        public static global::Bakalarka.BakalarkaRepository repo = global::Bakalarka.BakalarkaRepository.Instance;

        static Recording_gitlab instance = new Recording_gitlab();

        /// <summary>
        /// Constructs a new instance.
        /// </summary>
        public Recording_gitlab()
        {
        }

        /// <summary>
        /// Gets a static instance of this recording.
        /// </summary>
        public static Recording_gitlab Instance
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

            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'IterateFasterInnovateTogetherGitL.ATagSignIn' at 39;34.", repo.IterateFasterInnovateTogetherGitL.ATagSignInInfo, new RecordItemIndex(0));
            repo.IterateFasterInnovateTogetherGitL.ATagSignIn.Click("39;34");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'SignInGitLab' at 1246;326.", repo.SignInGitLab.SelfInfo, new RecordItemIndex(1));
            repo.SignInGitLab.Self.Click("1246;326");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'SignInGitLab.UserPassword' at 264;21.", repo.SignInGitLab.UserPasswordInfo, new RecordItemIndex(2));
            repo.SignInGitLab.UserPassword.Click("264;21");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'SignInGitLab.Commit' at 240;21.", repo.SignInGitLab.CommitInfo, new RecordItemIndex(3));
            repo.SignInGitLab.Commit.Click("240;21");
            Delay.Milliseconds(0);
            
        }

#region Image Feature Data
#endregion
    }
#pragma warning restore 0436
}
