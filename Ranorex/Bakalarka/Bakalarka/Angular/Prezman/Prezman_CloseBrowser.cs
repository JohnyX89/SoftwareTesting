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

namespace Bakalarka.Angular.Prezman
{
#pragma warning disable 0436 //(CS0436) The type 'type' in 'assembly' conflicts with the imported type 'type2' in 'assembly'. Using the type defined in 'assembly'.
    /// <summary>
    ///The Prezman_CloseBrowser recording.
    /// </summary>
    [TestModule("163f6e74-6c7c-413b-aa60-9e6187f3bea6", ModuleType.Recording, 1)]
    public partial class Prezman_CloseBrowser : ITestModule
    {
        /// <summary>
        /// Holds an instance of the global::Bakalarka.BakalarkaRepository repository.
        /// </summary>
        public static global::Bakalarka.BakalarkaRepository repo = global::Bakalarka.BakalarkaRepository.Instance;

        static Prezman_CloseBrowser instance = new Prezman_CloseBrowser();

        /// <summary>
        /// Constructs a new instance.
        /// </summary>
        public Prezman_CloseBrowser()
        {
        }

        /// <summary>
        /// Gets a static instance of this recording.
        /// </summary>
        public static Prezman_CloseBrowser Instance
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

            Report.Log(ReportLevel.Info, "Application", "Closing application containing item 'Prezman'.", repo.Prezman.SelfInfo, new RecordItemIndex(0));
            Host.Current.CloseApplication(repo.Prezman.Self, new Duration(0));
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Application", "Closing application containing item 'Chrome'.", repo.Chrome.SelfInfo, new RecordItemIndex(1));
            Host.Current.CloseApplication(repo.Chrome.Self, new Duration(0));
            Delay.Milliseconds(0);
            
        }

#region Image Feature Data
#endregion
    }
#pragma warning restore 0436
}
