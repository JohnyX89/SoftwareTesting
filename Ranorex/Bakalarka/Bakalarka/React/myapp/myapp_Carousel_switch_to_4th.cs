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

namespace Bakalarka.React.myapp
{
#pragma warning disable 0436 //(CS0436) The type 'type' in 'assembly' conflicts with the imported type 'type2' in 'assembly'. Using the type defined in 'assembly'.
    /// <summary>
    ///The myapp_Carousel_switch_to_4th recording.
    /// </summary>
    [TestModule("6c5dfb6c-e8eb-4a75-b608-e29f72f94a2d", ModuleType.Recording, 1)]
    public partial class Myapp_Carousel_switch_to_4th : ITestModule
    {
        /// <summary>
        /// Holds an instance of the global::Bakalarka.BakalarkaRepository repository.
        /// </summary>
        public static global::Bakalarka.BakalarkaRepository repo = global::Bakalarka.BakalarkaRepository.Instance;

        static Myapp_Carousel_switch_to_4th instance = new Myapp_Carousel_switch_to_4th();

        /// <summary>
        /// Constructs a new instance.
        /// </summary>
        public Myapp_Carousel_switch_to_4th()
        {
        }

        /// <summary>
        /// Gets a static instance of this recording.
        /// </summary>
        public static Myapp_Carousel_switch_to_4th Instance
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

            Report.Log(ReportLevel.Info, "Invoke action", "Invoking EnsureVisible() on item 'ReactApp.Root.Carousel4thItem'.", repo.ReactApp.Root.Carousel4thItemInfo, new RecordItemIndex(0));
            repo.ReactApp.Root.Carousel4thItem.EnsureVisible();
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'ReactApp.Root.Carousel4thItem' at Center.", repo.ReactApp.Root.Carousel4thItemInfo, new RecordItemIndex(1));
            repo.ReactApp.Root.Carousel4thItem.Click();
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Delay", "Waiting for 300ms.", new RecordItemIndex(2));
            Delay.Duration(300, false);
            
            Report.Screenshot(ReportLevel.Info, "User", "CarouselSwitchToExactItem", null, false, new RecordItemIndex(3));
            
        }

#region Image Feature Data
#endregion
    }
#pragma warning restore 0436
}
