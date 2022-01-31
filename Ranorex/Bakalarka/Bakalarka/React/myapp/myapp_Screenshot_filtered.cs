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
    ///The myapp_Screenshot_filtered recording.
    /// </summary>
    [TestModule("c0d71fde-73af-451c-8f2a-7cc53cf02be6", ModuleType.Recording, 1)]
    public partial class Myapp_Screenshot_filtered : ITestModule
    {
        /// <summary>
        /// Holds an instance of the global::Bakalarka.BakalarkaRepository repository.
        /// </summary>
        public static global::Bakalarka.BakalarkaRepository repo = global::Bakalarka.BakalarkaRepository.Instance;

        static Myapp_Screenshot_filtered instance = new Myapp_Screenshot_filtered();

        /// <summary>
        /// Constructs a new instance.
        /// </summary>
        public Myapp_Screenshot_filtered()
        {
        }

        /// <summary>
        /// Gets a static instance of this recording.
        /// </summary>
        public static Myapp_Screenshot_filtered Instance
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

            Report.Log(ReportLevel.Info, "Invoke action", "Invoking EnsureVisible() on item 'ReactApp.Root.EmojiFinder'.", repo.ReactApp.Root.EmojiFinderInfo, new RecordItemIndex(0));
            repo.ReactApp.Root.EmojiFinder.EnsureVisible();
            Delay.Milliseconds(0);
            
            Report.Screenshot(ReportLevel.Info, "User", "BeforeSearch", null, false, new RecordItemIndex(1));
            
            // Filter emojis
            Report.Log(ReportLevel.Info, "Section", "Filter emojis", new RecordItemIndex(2));
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'ReactApp.Root.EmojiFinder' at Center.", repo.ReactApp.Root.EmojiFinderInfo, new RecordItemIndex(3));
            repo.ReactApp.Root.EmojiFinder.Click();
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Keyboard", "Key sequence 'happy' with focus on 'ReactApp.Root.EmojiFinder'.", repo.ReactApp.Root.EmojiFinderInfo, new RecordItemIndex(4));
            repo.ReactApp.Root.EmojiFinder.PressKeys("happy");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Delay", "Waiting for 1s.", new RecordItemIndex(5));
            Delay.Duration(1000, false);
            
            Report.Screenshot(ReportLevel.Info, "User", "SearchHappy", null, false, new RecordItemIndex(6));
            
        }

#region Image Feature Data
#endregion
    }
#pragma warning restore 0436
}
