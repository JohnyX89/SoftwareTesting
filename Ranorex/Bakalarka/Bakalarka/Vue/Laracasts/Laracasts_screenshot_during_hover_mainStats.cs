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

namespace Bakalarka.Vue.Laracasts
{
#pragma warning disable 0436 //(CS0436) The type 'type' in 'assembly' conflicts with the imported type 'type2' in 'assembly'. Using the type defined in 'assembly'.
    /// <summary>
    ///The Laracasts_screenshot_during_hover_mainStats recording.
    /// </summary>
    [TestModule("13e94c37-0a34-47c6-8a48-8b4416ec90e7", ModuleType.Recording, 1)]
    public partial class Laracasts_screenshot_during_hover_mainStats : ITestModule
    {
        /// <summary>
        /// Holds an instance of the global::Bakalarka.BakalarkaRepository repository.
        /// </summary>
        public static global::Bakalarka.BakalarkaRepository repo = global::Bakalarka.BakalarkaRepository.Instance;

        static Laracasts_screenshot_during_hover_mainStats instance = new Laracasts_screenshot_during_hover_mainStats();

        /// <summary>
        /// Constructs a new instance.
        /// </summary>
        public Laracasts_screenshot_during_hover_mainStats()
        {
        }

        /// <summary>
        /// Gets a static instance of this recording.
        /// </summary>
        public static Laracasts_screenshot_during_hover_mainStats Instance
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

            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Move item 'Laracasts.Manual.FWSerNumber' at Center.", repo.Laracasts.Manual.FWSerNumberInfo, new RecordItemIndex(0));
            repo.Laracasts.Manual.FWSerNumber.MoveTo();
            Delay.Milliseconds(0);
            
            Report.Screenshot(ReportLevel.Info, "User", "", null, false, new RecordItemIndex(1));
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Move item 'Laracasts.Manual.LangSerNumber' at Center.", repo.Laracasts.Manual.LangSerNumberInfo, new RecordItemIndex(2));
            repo.Laracasts.Manual.LangSerNumber.MoveTo();
            Delay.Milliseconds(0);
            
            Report.Screenshot(ReportLevel.Info, "User", "", null, false, new RecordItemIndex(3));
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Move item 'Laracasts.Manual.TechSerNumber' at Center.", repo.Laracasts.Manual.TechSerNumberInfo, new RecordItemIndex(4));
            repo.Laracasts.Manual.TechSerNumber.MoveTo();
            Delay.Milliseconds(0);
            
            Report.Screenshot(ReportLevel.Info, "User", "", null, false, new RecordItemIndex(5));
            
        }

#region Image Feature Data
#endregion
    }
#pragma warning restore 0436
}
