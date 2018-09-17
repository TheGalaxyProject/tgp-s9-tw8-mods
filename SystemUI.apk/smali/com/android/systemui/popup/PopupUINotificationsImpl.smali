.class public Lcom/android/systemui/popup/PopupUINotificationsImpl;
.super Ljava/lang/Object;
.source "PopupUINotificationsImpl.java"

# interfaces
.implements Lcom/android/systemui/popup/PopupUINotifications;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataConnectionAlertDialog:Landroid/app/AlertDialog;

.field private mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

.field private mMCCSettingAlertDialog:Landroid/app/AlertDialog;

.field private mResources:Landroid/content/res/Resources;

.field private mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/popup/PopupUINotificationsImpl;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/popup/PopupUINotificationsImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public dismissAlertDialogs()V
    .registers 3

    const-string/jumbo v0, "PopupUI.PopupUINotifications"

    const-string/jumbo v1, "dismissAlertDialogs()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2b
    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mMCCSettingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3c
    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_4d
    return-void
.end method

.method public setDialogWindowType(Landroid/app/AlertDialog;I)V
    .registers 5

    packed-switch p2, :pswitch_data_18

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :goto_c
    return-void

    :pswitch_d
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_c

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method public showDataConnectionAlertDialogs(Landroid/content/Intent;)V
    .registers 28

    const-string/jumbo v22, "type"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    const-string/jumbo v22, "PopupUI.PopupUINotifications"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "showDataConnectionNotifications() : type "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v22

    if-eqz v22, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->dismiss()V

    :cond_4a
    const-string/jumbo v8, ""

    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    packed-switch v21, :pswitch_data_32e

    :cond_5d
    :goto_5d
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->setDialogWindowType(Landroid/app/AlertDialog;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mDataConnectionAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f12021f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget-boolean v22, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v22, :cond_d8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f12021e

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f120a4c

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f1201dc

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v22, Lcom/android/systemui/popup/PopupUINotificationsImpl$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/PopupUINotificationsImpl$1;-><init>(Lcom/android/systemui/popup/PopupUINotificationsImpl;)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5d

    :cond_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f12021d

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a0

    :pswitch_e6
    const-class v22, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/KnoxStateMonitor;->isCellularDataAllowed()Z

    move-result v22

    if-nez v22, :cond_13c

    const-string/jumbo v22, "PopupUI.PopupUINotifications"

    const-string/jumbo v23, "Attempt mobile data connection is blocked by Knox"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f1208d2

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v7, v24, v25

    const v25, 0x7f1208cc

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    return-void

    :cond_13c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f120222

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f120221

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f12082d

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f1201dc

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v22, Lcom/android/systemui/popup/PopupUINotificationsImpl$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/popup/PopupUINotificationsImpl$2;-><init>(Lcom/android/systemui/popup/PopupUINotificationsImpl;)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5d

    :pswitch_18f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f120223

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f12021a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f120bad

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5d

    :pswitch_1c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "phone"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_26e

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v10

    if-eqz v10, :cond_224

    const/16 v22, 0x0

    array-length v0, v10

    move/from16 v23, v0

    :goto_1f6
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_224

    aget-object v11, v10, v22

    iget-object v0, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_221

    iget-object v0, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_221

    const/4 v6, 0x1

    :cond_221
    add-int/lit8 v22, v22, 0x1

    goto :goto_1f6

    :cond_224
    if-eqz v6, :cond_263

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    new-instance v22, Landroid/content/ComponentName;

    const-string/jumbo v23, "com.android.systemui"

    const-string/jumbo v24, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct/range {v22 .. v24}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static/range {v16 .. v16}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v18

    const-string/jumbo v22, "android.net.NETWORK_TEMPLATE"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_25b
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_25b} :catch_25d

    goto/16 :goto_5d

    :catch_25d
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5d

    :cond_263
    const-string/jumbo v22, "PopupUI.PopupUINotifications"

    const-string/jumbo v23, "showDataConnectionNotifications() : hasPolicy is false"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d

    :cond_26e
    const-string/jumbo v22, "PopupUI.PopupUINotifications"

    const-string/jumbo v23, "showDataConnectionNotifications() : Failed TelephonyManager.getSubscriberId"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d

    :pswitch_279
    const-string/jumbo v22, "no_signal_retry_enable"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    const-string/jumbo v22, "no_signal_retry_intent"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/app/PendingIntent;

    const-string/jumbo v22, "PopupUI.PopupUINotifications"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "showDataConnectionNotifications() : retry = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ",  PendingIntent = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f120223

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f120224

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v15, :cond_315

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f12096e

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_2e7
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v22, Lcom/android/systemui/popup/PopupUINotificationsImpl$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v13}, Lcom/android/systemui/popup/PopupUINotificationsImpl$3;-><init>(Lcom/android/systemui/popup/PopupUINotificationsImpl;ZLandroid/app/PendingIntent;)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v15, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f1206e7

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5d

    :cond_315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x7f120bad

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2e7

    :pswitch_323
    const-string/jumbo v22, "PopupUI.PopupUINotifications"

    const-string/jumbo v23, "showDataConnectionNotifications() : doesn\'t AlertDialog.show()"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_32e
    .packed-switch -0x1
        :pswitch_323
        :pswitch_82
        :pswitch_e6
        :pswitch_18f
        :pswitch_1c7
        :pswitch_279
    .end packed-switch
.end method

.method public showDataConnectionToastNotification()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120225

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showFlightModeEnabledAlertDialog()V
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_12
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1203a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isVoLTEVideoCallSupportedSIM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f12039f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_36
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f120bad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->setDialogWindowType(Landroid/app/AlertDialog;I)V

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mFlightModeEnabledAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_57
    iget-object v2, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f12039e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_36
.end method

.method public showMobileDeviceWarningToastNotification()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12076c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string/jumbo v0, "PopupUI.PopupUINotifications"

    const-string/jumbo v1, "showMobileDeviceWarningToastNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showSIMCardTrayWaterProtectionAlertDialog(IZ)V
    .registers 15

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-eqz p2, :cond_16

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    :cond_15
    return-void

    :cond_16
    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    if-nez v7, :cond_a2

    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v8, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    const v9, 0x1030132

    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f0d01ac

    invoke-virtual {v5, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v7, 0x7f0a04b2

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-boolean v7, Lcom/android/systemui/Rune;->POPUP_SUPPORT_SIM_CARD_TRAY_ON_RIGHT_WATER_PROTECTION_POPUP:Z

    if-eqz v7, :cond_a3

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0805b4

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_48
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    if-ne p1, v11, :cond_b0

    const v6, 0x7f120a19

    :goto_56
    const v7, 0x7f0a04b3

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f120a1a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f120bad

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/systemui/popup/PopupUINotificationsImpl$4;

    invoke-direct {v7, p0}, Lcom/android/systemui/popup/PopupUINotificationsImpl$4;-><init>(Lcom/android/systemui/popup/PopupUINotificationsImpl;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v7, v11}, Lcom/android/systemui/popup/PopupUINotificationsImpl;->setDialogWindowType(Landroid/app/AlertDialog;I)V

    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mSIMCardTrayWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    :cond_a2
    return-void

    :cond_a3
    iget-object v7, p0, Lcom/android/systemui/popup/PopupUINotificationsImpl;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f0805b9

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_48

    :cond_b0
    const v6, 0x7f120a18

    goto :goto_56
.end method
