.class Lcom/android/server/desktopmode/CoverSupportStateController;
.super Ljava/lang/Object;
.source "CoverSupportStateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/CoverSupportStateController$1;,
        Lcom/android/server/desktopmode/CoverSupportStateController$2;,
        Lcom/android/server/desktopmode/CoverSupportStateController$3;,
        Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;
    }
.end annotation


# static fields
.field private static final ACTION_AUTH_STOPPED:Ljava/lang/String; = "com.samsung.android.intent.action.ACCESSORY_AUTHENTICATION_STOPPED"

.field static final COVER_SUPPORT_STATE_FULL:I = 0x1

.field static final COVER_SUPPORT_STATE_NONE:I = 0x3

.field static final COVER_SUPPORT_STATE_PARTIAL:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAuthComplete:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverManagerDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCoverState:Lcom/samsung/android/cover/CoverState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCoverSupportState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDesktopDockConnected:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

.field private mKeyboardCoverEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mKeyboardCoverObserver:Landroid/database/ContentObserver;

.field private final mLock:Ljava/lang/Object;

.field private mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mScreenMirroringDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/CoverSupportStateController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/desktopmode/CoverSupportStateController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mAuthComplete:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/desktopmode/CoverSupportStateController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/desktopmode/CoverSupportStateController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverManagerDisabled:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/desktopmode/CoverSupportStateController;)Lcom/samsung/android/cover/CoverState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/desktopmode/CoverSupportStateController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mDesktopDockConnected:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/desktopmode/CoverSupportStateController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mKeyboardCoverEnabled:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/desktopmode/CoverSupportStateController;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/desktopmode/CoverSupportStateController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mAuthComplete:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/desktopmode/CoverSupportStateController;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/desktopmode/CoverSupportStateController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mDesktopDockConnected:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/desktopmode/CoverSupportStateController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mKeyboardCoverEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/desktopmode/CoverSupportStateController;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/desktopmode/CoverSupportStateController;->initializeCoverState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/desktopmode/CoverSupportStateController;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/desktopmode/CoverSupportStateController;->updateCoverSupportStateLocked()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/CoverSupportStateController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/DesktopModeHwManager;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverManagerDisabled:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mKeyboardCoverEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mDesktopDockConnected:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mScreenMirroringDisabled:Z

    iput-boolean v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mAuthComplete:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverSupportState:I

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Lcom/android/server/desktopmode/CoverSupportStateController$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/CoverSupportStateController$1;-><init>(Lcom/android/server/desktopmode/CoverSupportStateController;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    new-instance v0, Lcom/android/server/desktopmode/CoverSupportStateController$2;

    invoke-direct {v0, p0, v2}, Lcom/android/server/desktopmode/CoverSupportStateController$2;-><init>(Lcom/android/server/desktopmode/CoverSupportStateController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mKeyboardCoverObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/desktopmode/CoverSupportStateController$3;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/CoverSupportStateController$3;-><init>(Lcom/android/server/desktopmode/CoverSupportStateController;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string/jumbo v0, "desktopmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v0, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;

    invoke-direct {v0, p0, v2}, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;-><init>(Lcom/android/server/desktopmode/CoverSupportStateController;Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;)V

    invoke-virtual {v0}, Lcom/android/server/desktopmode/CoverSupportStateController$Authenticator;->initialize()V

    return-void
.end method

.method private static coverSupportStateToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "COVER_SUPPORT_STATE_FULL"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "COVER_SUPPORT_STATE_PARTIAL"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "COVER_SUPPORT_STATE_NONE"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method private getSettingMirroringSwitchDisabled()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mirroring_switch_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private initializeCoverState()Z
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    iget-object v5, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_f

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    :cond_f
    iget-object v5, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isDesktopDockConnected()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mDesktopDockConnected:Z

    iget-object v5, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mobile_keyboard"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v2, :cond_55

    :goto_28
    iput-boolean v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mKeyboardCoverEnabled:Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/CoverSupportStateController;->updateCoverSupportStateLocked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mHwManager:Lcom/android/server/desktopmode/DesktopModeHwManager;

    new-instance v3, Lcom/android/server/desktopmode/CoverSupportStateController$4;

    invoke-direct {v3, p0}, Lcom/android/server/desktopmode/CoverSupportStateController$4;-><init>(Lcom/android/server/desktopmode/CoverSupportStateController;)V

    invoke-virtual {v2, v3}, Lcom/android/server/desktopmode/DesktopModeHwManager;->registerListener(Lcom/android/server/desktopmode/DesktopModeHwManager$DeviceEventListener;)V

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mobile_keyboard"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mKeyboardCoverObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_57

    monitor-exit v4

    return v1

    :cond_55
    move v2, v3

    goto :goto_28

    :catchall_57
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method private setMirroringSwitchDisabled(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mScreenMirroringDisabled:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mirroring_switch_disabled"

    invoke-static {v0, v1, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method

.method private updateCoverSupportStateLocked()Z
    .registers 7

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mAuthComplete:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mKeyboardCoverEnabled:Z

    if-eqz v2, :cond_97

    :cond_b
    const/4 v0, 0x3

    :cond_c
    :goto_c
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverSupportState:I

    if-eq v2, v0, :cond_33

    iput v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverSupportState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_ce

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v4, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v2, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    :goto_1d
    iget v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverSupportState:I

    if-ne v2, v5, :cond_d7

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/DesktopModeService;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    invoke-virtual {v2, v5, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_2f
    invoke-virtual {p0, v2}, Lcom/android/server/desktopmode/CoverSupportStateController;->disableCoverManager(Z)V

    const/4 v1, 0x1

    :cond_33
    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mDesktopDockConnected:Z

    if-eqz v2, :cond_da

    iget v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverSupportState:I

    if-ne v2, v5, :cond_da

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/CoverSupportStateController;->setMirroringSwitchDisabled(Z)V

    :cond_3f
    :goto_3f
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_96

    sget-object v2, Lcom/android/server/desktopmode/CoverSupportStateController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCoverSupportState(), mCoverSupportState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverSupportState:I

    invoke-static {v4}, Lcom/android/server/desktopmode/CoverSupportStateController;->coverSupportStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mCoverState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mAuthComplete="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mAuthComplete:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mKeyboardCoverEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mKeyboardCoverEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mDesktopDockConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mDesktopDockConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    return v1

    :cond_97
    iget-object v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v4, 0xc

    if-eq v2, v4, :cond_ad

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v4, 0x9

    if-ne v2, v4, :cond_b0

    :cond_ad
    const/4 v0, 0x1

    goto/16 :goto_c

    :cond_b0
    iget-object v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v4, 0xa

    if-eq v2, v4, :cond_ad

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->type:I

    if-eq v2, v5, :cond_ad

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mDesktopDockConnected:Z

    if-eqz v2, :cond_cb

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v2, :cond_cb

    const/4 v0, 0x3

    goto/16 :goto_c

    :cond_cb
    const/4 v0, 0x2

    goto/16 :goto_c

    :cond_ce
    iget-object v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v4, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-virtual {v2, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    goto/16 :goto_1d

    :cond_d7
    move v2, v3

    goto/16 :goto_2f

    :cond_da
    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mScreenMirroringDisabled:Z

    if-eqz v2, :cond_3f

    invoke-direct {p0, v3}, Lcom/android/server/desktopmode/CoverSupportStateController;->setMirroringSwitchDisabled(Z)V

    goto/16 :goto_3f
.end method


# virtual methods
.method disableCoverManager(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverManagerDisabled:Z

    if-eq v0, p1, :cond_43

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/android/server/desktopmode/CoverSupportStateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disableCoverManager()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverManagerDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_31
    iput-boolean p1, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverManagerDisabled:Z

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverManager;->disableCoverManager(Z)V

    if-nez p1, :cond_42

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverState:Lcom/samsung/android/cover/CoverState;
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_44

    :cond_42
    monitor-exit v1

    :cond_43
    return-void

    :catchall_44
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2a
    const-string/jumbo v0, "mAuthComplete"

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mAuthComplete:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mCoverManagerDisabled"

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverManagerDisabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mCoverState"

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mCoverSupportState"

    iget v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverSupportState:I

    invoke-static {v2}, Lcom/android/server/desktopmode/CoverSupportStateController;->coverSupportStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mDesktopDockConnected"

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mDesktopDockConnected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mKeyboardCoverEnabled"

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mKeyboardCoverEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mScreenMirroringDisabled"

    iget-boolean v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mScreenMirroringDisabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_8f
    .catchall {:try_start_2a .. :try_end_8f} :catchall_94

    monitor-exit v1

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void

    :catchall_94
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getCoverSupportState()I
    .registers 2

    iget v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverSupportState:I

    return v0
.end method

.method getCoverType()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    return v0

    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method initialize()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/desktopmode/CoverSupportStateController;->getSettingMirroringSwitchDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mScreenMirroringDisabled:Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/CoverSupportStateController;->updateCoverSupportStateLocked()Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isCoverSupportStatePartial()Z
    .registers 3

    iget v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController;->mCoverSupportState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
