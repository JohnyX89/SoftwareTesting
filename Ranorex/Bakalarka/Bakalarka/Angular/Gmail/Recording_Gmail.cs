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

namespace Bakalarka.Angular.Gmail
{
#pragma warning disable 0436 //(CS0436) The type 'type' in 'assembly' conflicts with the imported type 'type2' in 'assembly'. Using the type defined in 'assembly'.
    /// <summary>
    ///The Recording_Gmail recording.
    /// </summary>
    [TestModule("886aabad-2ef9-4fd4-acfa-c91336fc0aec", ModuleType.Recording, 1)]
    public partial class Recording_Gmail : ITestModule
    {
        /// <summary>
        /// Holds an instance of the global::Bakalarka.BakalarkaRepository repository.
        /// </summary>
        public static global::Bakalarka.BakalarkaRepository repo = global::Bakalarka.BakalarkaRepository.Instance;

        static Recording_Gmail instance = new Recording_Gmail();

        /// <summary>
        /// Constructs a new instance.
        /// </summary>
        public Recording_Gmail()
        {
        }

        /// <summary>
        /// Gets a static instance of this recording.
        /// </summary>
        public static Recording_Gmail Instance
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

            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'GmailEMailOdGooglu.ATagPřihlasitSe' at 76;30.", repo.GmailEMailOdGooglu.ATagPřihlasitSeInfo, new RecordItemIndex(0));
            repo.GmailEMailOdGooglu.ATagPřihlasitSe.Click("76;30");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'Gmail' at 1010;408.", repo.Gmail.SelfInfo, new RecordItemIndex(1));
            repo.Gmail.Self.Click("1010;408");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Keyboard", "Key sequence '{LControlKey up}burdz{LShiftKey down}{Back}{LShiftKey down}{LMenu down}{LShiftKey up}{LMenu up}y{LShiftKey down}8910{LShiftKey up}{RMenu down}' with focus on 'GmailEMailOdGooglu.ATagPřihlasitSe'.", repo.GmailEMailOdGooglu.ATagPřihlasitSeInfo, new RecordItemIndex(2));
            repo.GmailEMailOdGooglu.ATagPřihlasitSe.PressKeys("{LControlKey up}burdz{LShiftKey down}{Back}{LShiftKey down}{LMenu down}{LShiftKey up}{LMenu up}y{LShiftKey down}8910{LShiftKey up}{RMenu down}");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Keyboard", "Key 'Ctrl+Alt+V' Press with focus on 'GmailEMailOdGooglu.ATagPřihlasitSe'.", repo.GmailEMailOdGooglu.ATagPřihlasitSeInfo, new RecordItemIndex(3));
            Keyboard.PrepareFocus(repo.GmailEMailOdGooglu.ATagPřihlasitSe);
            Keyboard.Press(System.Windows.Forms.Keys.V | System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.Alt, 47, Keyboard.DefaultKeyPressTime, 1, true);
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Keyboard", "Key sequence '{LControlKey up}{RMenu up}gmail{LShiftKey down}{LMenu down}{LShiftKey up}{LMenu up}{OemPeriod}com' with focus on 'GmailEMailOdGooglu.ATagPřihlasitSe'.", repo.GmailEMailOdGooglu.ATagPřihlasitSeInfo, new RecordItemIndex(4));
            repo.GmailEMailOdGooglu.ATagPřihlasitSe.PressKeys("{LControlKey up}{RMenu up}gmail{LShiftKey down}{LMenu down}{LShiftKey up}{LMenu up}{OemPeriod}com");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'Gmail.VfPpkdRLmnJb' at 56;25.", repo.Gmail.VfPpkdRLmnJbInfo, new RecordItemIndex(5));
            repo.Gmail.VfPpkdRLmnJb.Click("56;25");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'Gmail.Password' at 257;43.", repo.Gmail.PasswordInfo, new RecordItemIndex(6));
            repo.Gmail.Password.Click("257;43");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Keyboard", "Key sequence 'Bur.Gma.{LShiftKey down}89{LShiftKey up}{Return}' with focus on 'Gmail.Password'.", repo.Gmail.PasswordInfo, new RecordItemIndex(7));
            repo.Gmail.Password.PressKeys("Bur.Gma.{LShiftKey down}89{LShiftKey up}{Return}");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Keyboard", "Key sequence '{LShiftKey down}{LMenu down}{LShiftKey up}{LMenu up}Bur.Gma.{LShiftKey down}89{LShiftKey up}{Return}' with focus on 'GmailEMailOdGooglu.ATagPřihlasitSe'.", repo.GmailEMailOdGooglu.ATagPřihlasitSeInfo, new RecordItemIndex(8));
            repo.GmailEMailOdGooglu.ATagPřihlasitSe.PressKeys("{LShiftKey down}{LMenu down}{LShiftKey up}{LMenu up}Bur.Gma.{LShiftKey down}89{LShiftKey up}{Return}");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'Gmail.VmOpGe' at 484;410.", repo.Gmail.VmOpGeInfo, new RecordItemIndex(9));
            repo.Gmail.VmOpGe.Click("484;410");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'Gmail.VmOpGe' at 487;408.", repo.Gmail.VmOpGeInfo, new RecordItemIndex(10));
            repo.Gmail.VmOpGe.Click("487;408");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'Gmail.VmOpGe' at 533;437.", repo.Gmail.VmOpGeInfo, new RecordItemIndex(11));
            repo.Gmail.VmOpGe.Click("533;437");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'Gmail.Password' at 206;6.", repo.Gmail.PasswordInfo, new RecordItemIndex(12));
            repo.Gmail.Password.Click("206;6");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'Gmail.IdentifierId' at 186;46.", repo.Gmail.IdentifierIdInfo, new RecordItemIndex(13));
            repo.Gmail.IdentifierId.Click("186;46");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'Gmail.IdentifierId' at 187;41.", repo.Gmail.IdentifierIdInfo, new RecordItemIndex(14));
            repo.Gmail.IdentifierId.Click("187;41");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'Gmail.VfPpkdRLmnJb1' at 46;24.", repo.Gmail.VfPpkdRLmnJb1Info, new RecordItemIndex(15));
            repo.Gmail.VfPpkdRLmnJb1.Click("46;24");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'DoručenaPošta134Burdy8910Atgmail.AdresniAVyhledavaciŘadek' at 321;15.", repo.DoručenaPošta134Burdy8910Atgmail.AdresniAVyhledavaciŘadekInfo, new RecordItemIndex(16));
            repo.DoručenaPošta134Burdy8910Atgmail.AdresniAVyhledavaciŘadek.Click("321;15");
            Delay.Milliseconds(0);
            
            Report.Log(ReportLevel.Info, "Mouse", "Mouse Left Click item 'DoručenaPošta134Burdy8910Atgmail1.AioUKr6le' at 130;14.", repo.DoručenaPošta134Burdy8910Atgmail1.AioUKr6leInfo, new RecordItemIndex(17));
            repo.DoručenaPošta134Burdy8910Atgmail1.AioUKr6le.Click("130;14");
            Delay.Milliseconds(0);
            
        }

#region Image Feature Data
#endregion
    }
#pragma warning restore 0436
}