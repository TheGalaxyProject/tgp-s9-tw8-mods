.class Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;
.super Ljava/lang/Object;
.source "SecSetupLockScreenIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12

    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-virtual {v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->isResumed()Z

    move-result v7

    if-nez v7, :cond_9

    return-void

    :cond_9
    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const-string/jumbo v8, "keyguard"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_21

    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->nextAction(I)V

    return-void

    :cond_21
    :try_start_21
    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-static {v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->-get0(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;)Landroid/widget/RadioGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_116

    :goto_2e
    return-void

    :pswitch_2f
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.android.settings"

    const-string/jumbo v8, "com.samsung.android.settings.smartscan.SmartScanLockSettings"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "previousStage"

    const-string/jumbo v8, "setupwizard_intelligentscan"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/16 v8, 0x2735

    invoke-virtual {v7, v6, v8}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V
    :try_end_4d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_21 .. :try_end_4d} :catch_4e

    goto :goto_2e

    :catch_4e
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2e

    :pswitch_53
    :try_start_53
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.android.settings"

    const-string/jumbo v8, "com.samsung.android.settings.face.FaceLockSettings"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "previousStage"

    const-string/jumbo v8, "setupwizard_face"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/16 v8, 0x2735

    invoke-virtual {v7, v5, v8}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2e

    :pswitch_72
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.android.settings"

    const-string/jumbo v8, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "previousStage"

    const-string/jumbo v8, "lock_screen_iris"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "fromSetupwizard"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v7

    if-eqz v7, :cond_9d

    const-string/jumbo v7, "needIntelligentBiometrics"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_9d
    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/16 v8, 0x2735

    invoke-virtual {v7, v4, v8}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2e

    :pswitch_a5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.android.settings"

    const-string/jumbo v8, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "previousStage"

    const-string/jumbo v8, "google_setupwizard_fingerprint"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "fromSetupwizard"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/16 v8, 0x2735

    invoke-virtual {v7, v3, v8}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2e

    :pswitch_cc
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.android.settings.SETUP_LOCK_SCREEN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "com.android.settings"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "fromSetupwizard"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-virtual {v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasEnrolledFaceAndNonSecure(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_f8

    const-string/jumbo v7, "faceAuthNotNeed"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_f8
    iget-object v7, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/16 v8, 0x2735

    invoke-virtual {v7, v2, v8}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2e

    :pswitch_101
    const v7, 0x7f1218f1

    invoke-static {v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;->newInstance(I)Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-virtual {v8}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string/jumbo v9, "dialog"

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_114
    .catch Landroid/content/ActivityNotFoundException; {:try_start_53 .. :try_end_114} :catch_4e

    goto/16 :goto_2e

    :pswitch_data_116
    .packed-switch 0x7f0a04d4
        :pswitch_53
        :pswitch_a5
        :pswitch_cc
        :pswitch_2f
        :pswitch_72
        :pswitch_101
    .end packed-switch
.end method
