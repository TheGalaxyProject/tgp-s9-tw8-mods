.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/content/Intent;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_phone_KeyguardBottomAreaView$6_33050(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->unbindCameraPrewarmService(Z)V

    return-void
.end method

.method public run()V
    .registers 18

    const/16 v16, -0x60

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v15

    const/4 v1, 0x3

    invoke-virtual {v15, v1}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    :try_start_a
    const-string/jumbo v1, "SEP"

    sget-object v2, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    const-string/jumbo v1, "StatusBar/KeyguardBottomAreaView"

    const-string/jumbo v2, "launch secure Camera - "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "isSecure"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->val$intent:Landroid/content/Intent;

    const/high16 v2, 0x34010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "StatusBar/KeyguardBottomAreaView"

    const-string/jumbo v2, "ActivityManager.getService().requestWaitingForOccluding();"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "StatusBar/KeyguardBottomAreaView"

    const-string/jumbo v2, "ActivityManager.getService().resumeAppSwitches();"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->requestWaitingForOccluding()V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    :cond_6a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->val$intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->val$intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x10000000

    const/4 v10, 0x0

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a6} :catch_ba

    move-result v16

    :goto_a7
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap1(I)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v14, v0}, Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk$8;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_ba
    move-exception v13

    const-string/jumbo v1, "StatusBar/KeyguardBottomAreaView"

    const-string/jumbo v2, "Unable to start camera activity"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a7
.end method
