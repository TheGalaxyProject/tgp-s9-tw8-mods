.class public Lcom/android/systemui/net/NetworkOverLimitActivity;
.super Landroid/app/Activity;
.source "NetworkOverLimitActivity.java"


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->snoozePolicy(Landroid/net/NetworkTemplate;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getLimitedDialogTitleForTemplate(Landroid/net/NetworkTemplate;)I
    .registers 2

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    const v0, 0x7f12022c

    return v0

    :pswitch_b
    const v0, 0x7f120228

    return v0

    :pswitch_f
    const v0, 0x7f120229

    return v0

    :pswitch_13
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v0, :cond_1b

    const v0, 0x7f1209dc

    :goto_1a
    return v0

    :cond_1b
    const v0, 0x7f1209db

    goto :goto_1a

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_13
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method private snoozePolicy(Landroid/net/NetworkTemplate;)V
    .registers 6

    const-string/jumbo v2, "netpolicy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    :try_start_b
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->snoozeLimit(Landroid/net/NetworkTemplate;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string/jumbo v2, "NetworkOverLimitActivity"

    const-string/jumbo v3, "problem snoozing network policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v5}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getLimitedDialogTitleForTemplate(Landroid/net/NetworkTemplate;)I

    move-result v6

    sget-boolean v7, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v7, :cond_6f

    const v0, 0x7f1209d7

    :goto_20
    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    sget-boolean v7, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v7, :cond_73

    const v4, 0x104000a

    :goto_2d
    sget-boolean v7, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v7, :cond_77

    const v3, 0x7f1209d9

    :goto_34
    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v7, Lcom/android/systemui/net/NetworkOverLimitActivity$1;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/net/NetworkOverLimitActivity$1;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V

    invoke-virtual {v1, v3, v7}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    new-instance v7, Lcom/android/systemui/net/NetworkOverLimitActivity$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/net/NetworkOverLimitActivity$2;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;)V

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v7, 0x3e99999a    # 0.3f

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    return-void

    :cond_6f
    const v0, 0x7f1209d6

    goto :goto_20

    :cond_73
    const v4, 0x7f1209da

    goto :goto_2d

    :cond_77
    const v3, 0x7f1209d8

    goto :goto_34
.end method
