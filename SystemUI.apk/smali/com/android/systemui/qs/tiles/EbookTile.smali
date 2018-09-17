.class public Lcom/android/systemui/qs/tiles/EbookTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "EbookTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/EbookTile$1;,
        Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DB_COLOR_ADJUSTMENT:Ljava/lang/String; = "color_blind"

.field private static final DB_GRAYSCALE:Ljava/lang/String; = "greyscale_mode"

.field private static final DB_NEGATIVE_COLORS:Ljava/lang/String; = "high_contrast"

.field private static final READING_MODE_OFF:I = 0x4

.field private static final READING_MODE_ON:I = 0x5

.field private static final READING_MODE_SUPPORT_HW:I = 0x0

.field private static final READING_MODE_SUPPORT_NONE:I = 0x2

.field private static final READING_MODE_SUPPORT_SW:I = 0x1

.field private static final SCREEN_MODE_SETTING:Ljava/lang/String; = "screen_mode_setting"

.field private static final SCREEN_MODE_SETTING_ADAPTIVE_DISPLAY:Ljava/lang/String; = "screen_mode_automatic_setting"

.field private static final SCREEN_MODE_SETTING_SW:Ljava/lang/String; = "sw_screen_mode_setting"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;

.field private final mFeatureEnabled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureObserver:Landroid/database/ContentObserver;

.field private mListening:Z

.field private final mScreenModeSetting:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

.field private final mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

.field private final mScreenModeSettingsSW:Lcom/android/systemui/qs/QSTileSystemSettingObserver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/EbookTile;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/EbookTile;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mFeatureEnabled:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/EbookTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/EbookTile;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->isEbookModeEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/EbookTile;Ljava/lang/Object;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/EbookTile;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/EbookTile;->setMode(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/EbookTile;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->showItPolicyToast()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/systemui/qs/tiles/EbookTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mFeatureEnabled:Ljava/util/HashMap;

    new-instance v0, Lcom/android/systemui/qs/tiles/EbookTile$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/EbookTile$1;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mFeatureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->addFeature()V

    new-instance v0, Lcom/android/systemui/qs/tiles/EbookTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v3, "screen_mode_setting"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/EbookTile$2;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSetting:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    sget v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_55

    new-instance v0, Lcom/android/systemui/qs/tiles/EbookTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v3, "sw_screen_mode_setting"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/EbookTile$3;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    :goto_42
    sget v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    if-nez v0, :cond_58

    new-instance v0, Lcom/android/systemui/qs/tiles/EbookTile$4;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v3, "screen_mode_automatic_setting"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/EbookTile$4;-><init>(Lcom/android/systemui/qs/tiles/EbookTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    :goto_54
    return-void

    :cond_55
    iput-object v4, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    goto :goto_42

    :cond_58
    iput-object v4, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    goto :goto_54
.end method

.method private addFeature()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mFeatureEnabled:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string/jumbo v0, "greyscale_mode"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/EbookTile;->addFeature(Ljava/lang/String;)V

    const-string/jumbo v0, "high_contrast"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/EbookTile;->addFeature(Ljava/lang/String;)V

    const-string/jumbo v0, "color_blind"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/EbookTile;->addFeature(Ljava/lang/String;)V

    return-void
.end method

.method private addFeature(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " addFeature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mFeatureEnabled:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v3, p1, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_49

    :goto_2e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mFeatureObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void

    :cond_49
    move v0, v1

    goto :goto_2e
.end method

.method private isEbookModeEnabled(I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    sget-object v1, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEbookMode ?  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isFeatureEnabled()Z
    .registers 4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mFeatureEnabled:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mFeatureEnabled:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    return v2

    :cond_26
    const/4 v2, 0x0

    return v2
.end method

.method private setMode(Z)V
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v4, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    if-nez v4, :cond_5c

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "mDNIe"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_57

    if-eqz p1, :cond_58

    const/4 v1, 0x5

    :goto_2f
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    if-eqz p1, :cond_5a

    :goto_33
    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/QSTileSystemSettingObserver;->setValue(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSetting:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/QSTileSystemSettingObserver;->setValue(I)V

    sget-object v2, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mdnie.setScreenMode() value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    :cond_57
    :goto_57
    return-void

    :cond_58
    const/4 v1, 0x4

    goto :goto_2f

    :cond_5a
    move v2, v3

    goto :goto_33

    :cond_5c
    sget v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    if-ne v2, v3, :cond_70

    if-eqz p1, :cond_69

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTileSystemSettingObserver;->setValue(I)V

    goto :goto_57

    :cond_69
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTileSystemSettingObserver;->setValue(I)V

    goto :goto_57

    :cond_70
    sget-object v2, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "NO"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/EbookTile$EbookDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 3

    const/4 v1, 0x0

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isEbookTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->showItPolicyToast()V

    return-object v1

    :cond_13
    sget v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    if-nez v0, :cond_20

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.ModePreviewTablet"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_20
    return-object v1
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x1394

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 3

    sget v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120887

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1208dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .registers 5

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isEbookTileBlocked()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->showItPolicyToast()V

    return-void

    :cond_12
    sget-object v2, Lcom/android/systemui/qs/tiles/EbookTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleClick : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " SupportPremiumAMOLED ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v1, :cond_46

    return-void

    :cond_46
    sget v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4c

    return-void

    :cond_4c
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->getMetricsCategory()I

    move-result v2

    xor-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/EbookTile;->setMode(Z)V

    return-void
.end method

.method protected handleLongClick()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    return-void
.end method

.method protected handleSecondaryClick()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/EbookTile;->showDetail(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    if-nez v1, :cond_40

    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_35

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_10
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->isFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    :goto_1a
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    sget v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    if-ne v1, v2, :cond_64

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    const v2, 0x7f120887

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const v1, 0x7f0804f3

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_34
    return-void

    :cond_35
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSetting:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileSystemSettingObserver;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/EbookTile;->isEbookModeEnabled(I)Z

    move-result v0

    goto :goto_10

    :cond_40
    sget v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    if-ne v1, v2, :cond_5a

    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_4f

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_10

    :cond_4f
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileSystemSettingObserver;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/EbookTile;->isEbookModeEnabled(I)Z

    move-result v0

    goto :goto_10

    :cond_5a
    const/4 v0, 0x0

    goto :goto_10

    :cond_5c
    if-eqz v0, :cond_62

    const/4 v1, 0x2

    :goto_5f
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    goto :goto_1a

    :cond_62
    move v1, v2

    goto :goto_5f

    :cond_64
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1208dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    const v1, 0x7f0804f7

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_34
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/EbookTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSetting:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileSystemSettingObserver;->setUserId(I)V

    sget v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileSystemSettingObserver;->setUserId(I)V

    :cond_e
    sget v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileSystemSettingObserver;->setUserId(I)V

    :cond_18
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mFeatureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->addFeature()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->refreshState()V

    return-void
.end method

.method public isAvailable()Z
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v2

    :cond_e
    return v2
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .registers 2

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/EbookTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mListening:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSetting:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileSystemSettingObserver;->setListening(Z)V

    sget v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingAdaptiveDisplay:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileSystemSettingObserver;->setListening(Z)V

    :cond_15
    sget v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_READINGMODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/EbookTile;->mScreenModeSettingsSW:Lcom/android/systemui/qs/QSTileSystemSettingObserver;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileSystemSettingObserver;->setListening(Z)V

    :cond_1f
    return-void
.end method
