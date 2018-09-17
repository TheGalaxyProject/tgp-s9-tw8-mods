.class public Lcom/android/settings/deviceinfo/UsbModeChooserActivity;
.super Landroid/app/Activity;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;,
        Lcom/android/settings/deviceinfo/UsbModeChooserActivity$2;,
        Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;,
        Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;
    }
.end annotation


# static fields
.field public static final DEFAULT_MODES:[I

.field public static final DEFAULT_MODES_VZW:[I

.field private static mContainerLayout:Landroid/widget/LinearLayout;

.field private static mIsSupportPowerRole:Z


# instance fields
.field private mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

.field private mCurrent:I

.field private mCurrentConnectionMode:I

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mHandler:Landroid/os/Handler;

.field private mIsConnected:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPortPowerRole:I

.field private mPrevConnectedState:Z

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectionSupplyingPower:Z

.field private mThread:Ljava/lang/Thread;

.field private mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings/deviceinfo/UsbBackend;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrentConnectionMode:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsConnected:Z

    return v0
.end method

.method static synthetic -get6()Z
    .registers 1

    sget-boolean v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsSupportPowerRole:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPortPowerRole:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPrevConnectedState:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mSelectionSupplyingPower:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrentConnectionMode:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsConnected:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPortPowerRole:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPrevConnectedState:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mSelectionSupplyingPower:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->checkedRadioButton(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->finishDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x1

    filled-new-array {v0, v1, v4, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    sput-boolean v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsSupportPowerRole:Z

    return-void

    nop

    :array_16
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x8
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPortPowerRole:I

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mSelectionSupplyingPower:Z

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsConnected:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPrevConnectedState:Z

    iput v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrentConnectionMode:I

    new-instance v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$2;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private checkedRadioButton(I)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/4 v2, 0x0

    :goto_f
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    array-length v3, v3

    if-ge v2, v3, :cond_48

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v3

    if-eqz v3, :cond_34

    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_37

    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Checkable;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_32
    add-int/lit8 v0, v0, 0x1

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_37
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Checkable;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43} :catch_44

    goto :goto_32

    :catch_44
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_48
    return-void

    :cond_49
    const/4 v2, 0x0

    :goto_4a
    :try_start_4a
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    array-length v3, v3

    if-ge v2, v3, :cond_48

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v3

    if-eqz v3, :cond_6f

    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_72

    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Checkable;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_6d
    add-int/lit8 v0, v0, 0x1

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_72
    sget-object v3, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Checkable;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_7e} :catch_44

    goto :goto_6d
.end method

.method private finishDialog()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    :cond_14
    return-void
.end method

.method static getSummary(I)I
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    packed-switch p0, :pswitch_data_e

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_5
    const v0, 0x7f121d48

    return v0

    :pswitch_9
    const v0, 0x7f121d39

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x4
        :pswitch_5
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method private static getSummaryVzw(I)I
    .registers 2

    packed-switch p0, :pswitch_data_28

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_5
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f121d45

    return v0

    :cond_f
    const v0, 0x7f121d3f

    return v0

    :pswitch_13
    const v0, 0x7f121d4c

    return v0

    :pswitch_17
    const v0, 0x7f121d43

    return v0

    :pswitch_1b
    const v0, 0x7f121d49

    return v0

    :pswitch_1f
    const v0, 0x7f121d3a

    return v0

    :pswitch_23
    const v0, 0x7f121d4e

    return v0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_5
        :pswitch_13
        :pswitch_17
        :pswitch_3
        :pswitch_1b
        :pswitch_3
        :pswitch_1f
        :pswitch_3
        :pswitch_23
    .end packed-switch
.end method

.method static getTitle(I)I
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    packed-switch p0, :pswitch_data_1e

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_5
    const v0, 0x7f121d3c

    return v0

    :pswitch_9
    const v0, 0x7f121d4b

    return v0

    :pswitch_d
    const v0, 0x7f121d40

    return v0

    :pswitch_11
    const v0, 0x7f121d46

    return v0

    :pswitch_15
    const v0, 0x7f121d37

    return v0

    :pswitch_19
    const v0, 0x7f121d4d

    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_3
        :pswitch_11
        :pswitch_3
        :pswitch_15
        :pswitch_3
        :pswitch_19
    .end packed-switch
.end method

.method private static getTitleVzw(I)I
    .registers 2

    packed-switch p0, :pswitch_data_28

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_5
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f12079a

    return v0

    :cond_f
    const v0, 0x7f121d3c

    return v0

    :pswitch_13
    const v0, 0x7f121d4b

    return v0

    :pswitch_17
    const v0, 0x7f121d44

    return v0

    :pswitch_1b
    const v0, 0x7f121d4a

    return v0

    :pswitch_1f
    const v0, 0x7f121d3b

    return v0

    :pswitch_23
    const v0, 0x7f121d4d

    return v0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_5
        :pswitch_13
        :pswitch_17
        :pswitch_3
        :pswitch_1b
        :pswitch_3
        :pswitch_1f
        :pswitch_3
        :pswitch_23
    .end packed-switch
.end method

.method private inflateOption(IZLandroid/widget/LinearLayout;Z)V
    .registers 13

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d026a

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x1020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v4, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getTitleVzw(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getSummaryVzw(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_38
    if-eqz p4, :cond_41

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v4, :cond_86

    invoke-direct {p0, v3, v2, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->setDisabledByAdmin(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_41
    new-instance v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;

    invoke-direct {v4, p0, p4, p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;ZI)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_61

    const/4 v4, 0x2

    if-eq p1, v4, :cond_61

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_61
    move-object v4, v3

    check-cast v4, Landroid/widget/Checkable;

    invoke-interface {v4, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_6b
    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getTitle(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getSummary(I)I

    move-result v0

    if-nez v0, :cond_7e

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_38

    :cond_7e
    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getSummary(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_38

    :cond_86
    return-void
.end method

.method private setDisabledByAdmin(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_2b

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    const v1, 0x7f0a06fa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0600e8

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2b
    return-void
.end method

.method static updateSummary(Landroid/widget/TextView;I)V
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    const v0, 0x7f121d4c

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    return-void
.end method


# virtual methods
.method public checkSmartSwtichTransfer()Z
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "content://com.sec.android.easyMover.statusProvider/isOtgTransferring"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TRUE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string/jumbo v2, "UsbModeChooserActivity"

    const-string/jumbo v3, "checkSmartSwtichTransfer - return true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    const/4 v2, 0x1

    return v2

    :catch_23
    move-exception v0

    :cond_24
    const-string/jumbo v2, "UsbModeChooserActivity"

    const-string/jumbo v3, "checkSmartSwtichTransfer - return false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "helphub:category"

    const-string/jumbo v3, "USERMAN"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->startActivity(Landroid/content/Intent;)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;Lcom/android/settings/Utils$OnlineHelpMenuState;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v0

    iget-boolean v2, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    if-nez v2, :cond_22

    iget-object v2, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_22

    iget-object v2, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_22
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPrevConnectedState:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f121d36

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f0d0358

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$5;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$5;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$6;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$6;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    const v5, 0x7f12055d

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    const v4, 0x7f0a01b9

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {p0, v1, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    new-instance v1, Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/UsbBackend;->getCurrentMode()I

    move-result v1

    iput v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    const/4 v0, 0x0

    :goto_77
    sget-object v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    array-length v1, v1

    if-ge v0, v1, :cond_f8

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeDisallowedBySystem(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b2

    sget-object v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v4, v1, v0

    iget v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    sget-object v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v5, v5, v0

    if-ne v1, v5, :cond_b5

    move v1, v2

    :goto_a3
    sget-object v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v7, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeDisallowed(I)Z

    move-result v6

    invoke-direct {p0, v4, v1, v5, v6}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;Z)V

    :cond_b2
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    :cond_b5
    move v1, v3

    goto :goto_a3

    :cond_b7
    const/4 v0, 0x0

    :goto_b8
    sget-object v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    array-length v1, v1

    if-ge v0, v1, :cond_f8

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_f3

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeDisallowedBySystem(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_f3

    sget-object v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v1, v0

    iget v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    sget-object v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v5, v5, v0

    if-ne v1, v5, :cond_f6

    move v1, v2

    :goto_e4
    sget-object v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mContainerLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v7, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeDisallowed(I)Z

    move-result v6

    invoke-direct {p0, v4, v1, v5, v6}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;Z)V

    :cond_f3
    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    :cond_f6
    move v1, v3

    goto :goto_e4

    :cond_f8
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/UsbBackend;->isSupportPowerRole()Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsSupportPowerRole:Z

    sget-boolean v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsSupportPowerRole:Z

    if-eqz v1, :cond_111

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_111
    return-void
.end method

.method public onDestroy()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_d

    :try_start_8
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_d} :catch_45

    :cond_d
    :goto_d
    sget-boolean v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mIsSupportPowerRole:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1d

    :try_start_15
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mUsbPortStateReceiver:Landroid/content/BroadcastReceiver;
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1d} :catch_4a

    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_39
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mThread:Ljava/lang/Thread;

    :cond_44
    return-void

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_d

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1d
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/UsbBackend;->getSupportedPowerRole()I

    move-result v1

    iput v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mPortPowerRole:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;Lcom/android/settings/Utils$OnlineHelpMenuState;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/UsbBackend;->isSupportPowerRole()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-boolean v1, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    if-nez v1, :cond_2b

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2b
    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_c

    :try_start_7
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_c
.end method
