.class final Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;
.super Landroid/os/Handler;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UIUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    return-void
.end method


# virtual methods
.method synthetic -com_android_server_policy_LegacyGlobalActions$UIUpdateHandler-mthref-0()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap27(Lcom/android/server/policy/LegacyGlobalActions;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    const/4 v8, 0x1

    const-wide/16 v12, 0x12c

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_25e

    :cond_a
    :goto_a
    :pswitch_a
    return-void

    :pswitch_b
    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get64()Z

    move-result v7

    if-eqz v7, :cond_115

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get29(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_115

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get17(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get23(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;

    move-result-object v7

    const v8, 0x1020362

    invoke-virtual {v7, v8}, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    :goto_3b
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v7

    if-ge v1, v7, :cond_67

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap8(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap0(Lcom/android/server/policy/LegacyGlobalActions;Z)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_64

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_67
    :try_start_67
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap41(Lcom/android/server/policy/LegacyGlobalActions;F)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6d} :catch_f8

    :goto_6d
    if-eqz v4, :cond_87

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Lcom/android/server/policy/-$Lambda$5MW3rwZLV0XeeXCAuBbTFaPc3Pg;

    invoke-direct {v8, p0}, Lcom/android/server/policy/-$Lambda$5MW3rwZLV0XeeXCAuBbTFaPc3Pg;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_87
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v7

    if-eqz v7, :cond_ac

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_ac

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get11(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_ac
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get15(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v7

    if-eqz v7, :cond_d1

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get15(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_d1

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get15(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_d1
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get22(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get22(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get22(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_a

    :catch_f8
    move-exception v0

    const-string/jumbo v7, "LegacyGlobalActions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateWindowBlur : Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6d

    :cond_115
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap27(Lcom/android/server/policy/LegacyGlobalActions;)V

    goto/16 :goto_a

    :pswitch_11c
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_a

    :pswitch_12f
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v7

    if-eqz v7, :cond_140

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->notifyDataSetChanged()V

    :cond_140
    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get70()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get53(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$SilentModeAction;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/policy/LegacyGlobalActions$SilentModeAction;->updateRingerMode()V

    goto/16 :goto_a

    :pswitch_151
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->notifyDataSetChanged()V

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap29(Lcom/android/server/policy/LegacyGlobalActions;)V

    goto/16 :goto_a

    :pswitch_161
    const-string/jumbo v7, "LegacyGlobalActions"

    const-string/jumbo v8, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get7(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-result-object v7

    if-eqz v7, :cond_195

    const-string/jumbo v7, "LegacyGlobalActions"

    const-string/jumbo v8, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE : call mAirplaneModeAction.updateState"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get7(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v8}, Lcom/android/server/policy/LegacyGlobalActions;->-get8(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)V

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v8}, Lcom/android/server/policy/LegacyGlobalActions;->-get7(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap40(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$ToggleAction;)V

    :cond_195
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v7

    if-eqz v7, :cond_a

    const-string/jumbo v7, "LegacyGlobalActions"

    const-string/jumbo v8, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE : call mAdapter.notifyDataSetChanged"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_a

    :pswitch_1b1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "suppressCoverUI"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v7, "miniModeUI"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v8, "sender"

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get12(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_a

    :pswitch_1dd
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7, v8, v9}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap30(Lcom/android/server/policy/LegacyGlobalActions;ZZ)V

    goto/16 :goto_a

    :pswitch_1e4
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7, v9, v9}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap30(Lcom/android/server/policy/LegacyGlobalActions;ZZ)V

    goto/16 :goto_a

    :pswitch_1eb
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap8(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap23(Lcom/android/server/policy/LegacyGlobalActions;Z)V

    goto/16 :goto_a

    :pswitch_1f8
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get17(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    move-result-object v7

    if-eqz v7, :cond_a

    const/4 v1, 0x0

    :goto_201
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v7

    if-ge v1, v7, :cond_a

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap8(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap0(Lcom/android/server/policy/LegacyGlobalActions;Z)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v7, 0x1020006

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v8}, Lcom/android/server/policy/LegacyGlobalActions;->-get32(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v8

    if-ne v7, v8, :cond_247

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v8}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v8

    invoke-static {v7, v5, v8, v9}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap25(Lcom/android/server/policy/LegacyGlobalActions;Landroid/view/View;Lcom/android/server/policy/LegacyGlobalActions$Action;Z)V

    :cond_247
    add-int/lit8 v1, v1, 0x1

    goto :goto_201

    :pswitch_24a
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v8}, Lcom/android/server/policy/LegacyGlobalActions;->-get31(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap28(Lcom/android/server/policy/LegacyGlobalActions;I)V

    goto/16 :goto_a

    :pswitch_257
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap31(Lcom/android/server/policy/LegacyGlobalActions;)V

    goto/16 :goto_a

    :pswitch_data_25e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_11c
        :pswitch_151
        :pswitch_161
        :pswitch_1b1
        :pswitch_12f
        :pswitch_1dd
        :pswitch_1e4
        :pswitch_1eb
        :pswitch_1f8
        :pswitch_24a
        :pswitch_a
        :pswitch_257
    .end packed-switch
.end method
