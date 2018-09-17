.class final Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;
.super Ljava/lang/Object;
.source "SupportItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SupportItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EscalationClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SupportItemAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/SupportItemAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/SupportItemAdapter;Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get0(Lcom/android/settings/dashboard/SupportItemAdapter;)[Landroid/accounts/Account;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_53

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_126

    :cond_11
    :goto_11
    return-void

    :pswitch_12
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get3(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v5

    new-array v6, v8, [Landroid/util/Pair;

    const/16 v7, 0x1e0

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get6(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/settings/overlay/SupportFeatureProvider;->getAccountLoginIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_11

    :pswitch_39
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get6(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v6}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/settings/overlay/SupportFeatureProvider;->getSignInHelpIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_11

    :cond_53
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get2(Lcom/android/settings/dashboard/SupportItemAdapter;)Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_12e

    goto :goto_11

    :pswitch_63
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get3(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v5

    new-array v6, v8, [Landroid/util/Pair;

    const/16 v7, 0x1e1

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-wrap1(Lcom/android/settings/dashboard/SupportItemAdapter;I)V

    goto :goto_11

    :pswitch_7d
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get3(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v5

    new-array v6, v8, [Landroid/util/Pair;

    const/16 v7, 0x1e2

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-wrap1(Lcom/android/settings/dashboard/SupportItemAdapter;I)V

    goto/16 :goto_11

    :cond_98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_136

    goto/16 :goto_11

    :pswitch_a1
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get6(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get5(Lcom/android/settings/dashboard/SupportItemAdapter;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/android/settings/overlay/SupportFeatureProvider;->getSupportPhones(Ljava/lang/String;Z)Lcom/android/settings/support/SupportPhone;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/android/settings/support/SupportPhone;->getDialIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_11

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get3(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v5

    new-array v6, v8, [Landroid/util/Pair;

    const/16 v7, 0x1e5

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_11

    :pswitch_ec
    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get6(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get5(Lcom/android/settings/dashboard/SupportItemAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Lcom/android/settings/overlay/SupportFeatureProvider;->getSupportPhones(Ljava/lang/String;Z)Lcom/android/settings/support/SupportPhone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/support/SupportPhoneDialogFragment;->newInstance(Lcom/android/settings/support/SupportPhone;)Lcom/android/settings/support/SupportPhoneDialogFragment;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get3(Lcom/android/settings/dashboard/SupportItemAdapter;)Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v5}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v5

    new-array v6, v8, [Landroid/util/Pair;

    const/16 v7, 0x1e6

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v4, p0, Lcom/android/settings/dashboard/SupportItemAdapter$EscalationClickListener;->this$0:Lcom/android/settings/dashboard/SupportItemAdapter;

    invoke-static {v4}, Lcom/android/settings/dashboard/SupportItemAdapter;->-get1(Lcom/android/settings/dashboard/SupportItemAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "SupportPhoneDialog"

    invoke-virtual {v1, v4, v5}, Lcom/android/settings/support/SupportPhoneDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_11

    nop

    :pswitch_data_126
    .packed-switch 0x1020014
        :pswitch_12
        :pswitch_39
    .end packed-switch

    :pswitch_data_12e
    .packed-switch 0x1020014
        :pswitch_63
        :pswitch_7d
    .end packed-switch

    :pswitch_data_136
    .packed-switch 0x1020014
        :pswitch_a1
        :pswitch_ec
    .end packed-switch
.end method
