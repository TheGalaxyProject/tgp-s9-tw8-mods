.class public Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.super Ljava/lang/Object;
.source "TwoPhoneModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$1;,
        Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;,
        Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;,
        Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$DummyController;,
        Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sInstance:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStatusBarCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;

.field private mTint:I

.field private mTwoPhoneCallEnabled:Z

.field private mTwoPhoneMsgEnabled:Z

.field private mTwoPhoneRegistered:Z

.field private mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

.field private mTwoPhoneUserCreated:Z

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateIconRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneCallEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneMsgEnabled:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneRegistered:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneUserCreated:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneCallEnabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneMsgEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneRegistered:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneUserCreated:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->considerValuesAndUpdateIcons(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->updateIcons(ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-eq v1, v0, :cond_a

    :goto_7
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->DEBUG:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$1;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBarCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$3;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateIconRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v0, :cond_2e

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_2e
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private considerValuesAndUpdateIcons()V
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->getConstantDelays()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->considerValuesAndUpdateIcons(I)V

    return-void
.end method

.method private considerValuesAndUpdateIcons(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateIconRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    return-void
.end method

.method private getConstantDelays()I
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0xbb8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBarCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;->getStackScroller()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_f
    const/4 v3, 0x3

    if-lt v0, v3, :cond_14

    mul-int/lit16 v1, v0, 0x1f4

    :cond_14
    const/16 v3, 0x1388

    if-le v1, v3, :cond_1b

    const/16 v1, 0x1388

    :cond_1a
    :goto_1a
    return v1

    :cond_1b
    const/16 v3, 0xbb8

    if-ge v1, v3, :cond_1a

    const/16 v1, 0xbb8

    goto :goto_1a
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
    .registers 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->sInstance:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v0, :cond_12

    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->sInstance:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    :cond_f
    :goto_f
    sget-object v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->sInstance:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    return-object v0

    :cond_12
    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$DummyController;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$DummyController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->sInstance:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    goto :goto_f
.end method

.method private printLogLine(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "StatusBar.TwoPhoneModeController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method private updateIcons(ZI)V
    .registers 12

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v8, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateIcons(visible:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ") "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBarCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;->getPhoneBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getTwoPhoneIcon()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_5e

    move v4, v5

    :goto_3e
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_41
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBarCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;->getKeyguardBar()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v1

    if-eqz v1, :cond_57

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getTwoPhoneIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_60

    :goto_54
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_57
    iget v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTint:I

    const/4 v5, 0x0

    invoke-virtual {p0, v8, v5, v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void

    :cond_5e
    move v4, v6

    goto :goto_3e

    :cond_60
    move v5, v6

    goto :goto_54
.end method


# virtual methods
.method public dismissUserSwitchingDialog(Landroid/os/Handler;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->getConstantDelays()I

    move-result v1

    add-int/lit16 v0, v1, 0x1388

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "I\'ll post dismissUserSwitchingDialog() after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$8_FzZ7qCP_71onSGxuzkZM8M72o;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$8_FzZ7qCP_71onSGxuzkZM8M72o;-><init>(Ljava/lang/Object;)V

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "---- Two Phone -----"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  mTwoPhoneCallEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneCallEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, "  mTwoPhoneMsgEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneMsgEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, "  mTwoPhoneUserCreated="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneUserCreated:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, "  mTwoPhoneRegistered="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneRegistered:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "--------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_TwoPhoneModeController_12084()V
    .registers 8

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    if-eqz v2, :cond_26

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/os/PowerManager;->userActivity(JII)V

    :goto_1c
    const-string/jumbo v3, "dismissUserSwitchingDialog() by SystemUI"

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissUserSwitchingDialog()V

    :goto_25
    return-void

    :cond_26
    const-string/jumbo v3, "dismissUserSwitchingDialog(), powerManager is null"

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_1c

    :catch_2d
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception occured on closeUserSwitchDialog()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    goto :goto_25

    :cond_46
    :try_start_46
    const-string/jumbo v3, "dismissUserSwitchingDialog(), activityManager is null"

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4c} :catch_2d

    goto :goto_25
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_TwoPhoneModeController_13567(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    if-lez p1, :cond_22

    const/16 v1, 0x64

    if-ge p1, v1, :cond_22

    const v1, 0x7f120a6d

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    :goto_15
    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    const-string/jumbo v1, "DONE toast show for twophone."

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_22
    const v1, 0x7f120a6c

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_15
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 9

    iput p3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTint:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBarCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;->getPhoneBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getTwoPhoneIcon()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_17
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBarCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;->getKeyguardBar()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getTwoPhoneIcon()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2c
    return-void
.end method

.method public registerTwoPhoneHelpers(Landroid/os/Handler;)V
    .registers 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "two_register"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "two_account"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "two_call_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "two_sms_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method public setCallback(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBarCallback:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;

    return-void
.end method

.method public showDoneToast(Landroid/os/Handler;I)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->getConstantDelays()I

    move-result v1

    add-int/lit16 v0, v1, 0xbb8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "I\'ll post showDoneToast() after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$8_FzZ7qCP_71onSGxuzkZM8M72o$1;

    invoke-direct {v1, p2, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$8_FzZ7qCP_71onSGxuzkZM8M72o$1;-><init>(ILjava/lang/Object;)V

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateTwoPhoneIcons()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->considerValuesAndUpdateIcons()V

    return-void
.end method

.method public userSwitched()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->considerValuesAndUpdateIcons()V

    return-void
.end method
