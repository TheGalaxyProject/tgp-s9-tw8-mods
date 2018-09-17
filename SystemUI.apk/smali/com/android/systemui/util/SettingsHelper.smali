.class public Lcom/android/systemui/util/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/SettingsHelper$1;,
        Lcom/android/systemui/util/SettingsHelper$Item;,
        Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
    }
.end annotation


# instance fields
.field private mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/util/SettingsHelper$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/util/SettingsHelper;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/util/SettingsHelper;)Landroid/database/ContentObserver;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/util/SettingsHelper;Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->broadcastChange(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/util/SettingsHelper$1;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/util/SettingsHelper$1;-><init>(Lcom/android/systemui/util/SettingsHelper;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->setUpSettingsItem()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/util/-$Lambda$WNH8Guwqv9oRmqcMF6a9FJDKfEo;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/-$Lambda$WNH8Guwqv9oRmqcMF6a9FJDKfEo;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private broadcastChange(Landroid/net/Uri;)V
    .registers 8

    const-string/jumbo v3, "SettingsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "*** broadcastChange for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_1c
    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_42

    monitor-exit p0

    if-eqz v2, :cond_45

    const/4 v0, 0x0

    :goto_28
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_45

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v1, :cond_3f

    invoke-interface {v1, p1}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :catchall_42
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_45
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/util/SettingsHelper;
    .registers 1

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    return-object v0
.end method

.method private readSettingsDB()V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "SettingsHelper"

    const-string/jumbo v5, "readSettingsDB()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v1, :cond_26

    iget-object v4, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/SettingsHelper$Item;

    iget-object v5, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v5}, Lcom/android/systemui/util/SettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_26
    const-string/jumbo v4, "SettingsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readSettingsDB() elapsed= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerSettingsObserver()V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "SettingsHelper"

    const-string/jumbo v5, "registerSettingsObserver()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v1, :cond_24

    iget-object v4, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper$Item;->registerObserver()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_24
    const-string/jumbo v4, "SettingsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerSettingsObserver() elapsed= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setUpSettingsItem()V
    .registers 16

    const/4 v14, 0x0

    const/4 v6, 0x1

    const/4 v13, 0x0

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "white_lockscreen_statusbar"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "white_lockscreen_wallpaper"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "lockscreen_wallpaper"

    const-string/jumbo v4, "Int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    const-string/jumbo v4, "Int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "opne_theme_effect_lockscreen_wallpaper"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "dualclock_menu_settings"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "emergency_mode"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "easy_mode_switch"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "kids_home_mode"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "ultra_powersaving_mode"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "access_control_enabled"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "sidesync_source_connect"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "intelligent_sleep_mode"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "powersaving_switch"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "psm_switch"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "automatic_unlock"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "any_screen_running"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "set_shortcuts_mode"

    const-string/jumbo v11, "Int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "lockscreen_wallpaper_path"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "theme_font_clock"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "theme_font_numeric"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "theme_font_system"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "time_12_24"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "homecity_timezone"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "current_sec_theme_package_open_theme"

    const-string/jumbo v11, "String"

    move-object v8, p0

    move-object v12, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "current_sec_appicon_theme_package"

    const-string/jumbo v11, "String"

    move-object v8, p0

    move-object v12, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "current_sec_active_themepackage"

    const-string/jumbo v11, "String"

    move-object v8, p0

    move-object v12, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "Global"

    const-string/jumbo v10, "airplane_mode_on"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "Global"

    const-string/jumbo v10, "white_cover_wallpaper"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "Global"

    const-string/jumbo v10, "low_power"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "Secure"

    const-string/jumbo v3, "lock_screen_show_notifications"

    const-string/jumbo v4, "Int"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "Secure"

    const-string/jumbo v3, "speak_password"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "Secure"

    const-string/jumbo v3, "high_text_contrast_enabled"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "Secure"

    const-string/jumbo v3, "auto_swipe_main_user"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "Secure"

    const-string/jumbo v10, "shared_device_status"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "phone1_on"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "phone2_on"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "lock_application_shortcut"

    const-string/jumbo v4, "String"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "Global"

    const-string/jumbo v10, "tap_to_icon"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "lock_fmm_Message"

    const-string/jumbo v11, "String"

    move-object v8, p0

    move-object v12, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "lock_fmm_phone"

    const-string/jumbo v11, "String"

    move-object v8, p0

    move-object v12, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "show_button_background"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "simple_status_bar"

    const-string/jumbo v4, "Int"

    const-string/jumbo v1, "On"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v8, "CscFeature_SystemUI_ConfigDefStatusSimpleStatusBar"

    const-string/jumbo v9, "On"

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f8

    move v1, v6

    :goto_3f4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "Secure"

    const-string/jumbo v3, "sem_perfomance_mode"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "use_iris_firstlock"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "additional_information_val"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "add_info_music_control"

    const-string/jumbo v4, "Int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "add_info_today_schedule"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "add_info_alarm"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "Global"

    const-string/jumbo v10, "lockscreen_aod_servicebox_page"

    const-string/jumbo v11, "String"

    move-object v8, p0

    move-object v12, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "data_usage_reminder"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "action_memo_on_off_screen"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "screen_off_memo"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "Secure"

    const-string/jumbo v3, "lock_function_val"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "aod_mode"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "rapid_key_input"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "white_lockscreen_navigationbar"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "face_widget_order"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "Global"

    const-string/jumbo v10, "lockscreen_aod_staying_music_page"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "Secure"

    const-string/jumbo v3, "face_without_swipe_to_unlock"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "reserve_battery_on"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "enable_reserve_max_mode"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "aod_lock_music_facewidget_blacklist"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "aod_lock_music_media_key_code"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "aod_lock_share_current_music_pkg"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "Secure"

    const-string/jumbo v3, "n_digits_pin_enabled"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "Global"

    const-string/jumbo v10, "navigationbar_hide_bar_enabled"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "system_locales"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "display_battery_percentage"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "voicecall_type"

    const-string/jumbo v4, "Int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "Secure"

    const-string/jumbo v3, "show_keyboard_button"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "lock_noticard_opacity"

    const-string/jumbo v4, "Int"

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "voicecall_type2"

    const-string/jumbo v4, "Int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "lock_adaptive_color"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "lock_clock_adaptive_colors"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "roaming_clock_option"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "face_widgets_option"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "contact_info_option"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "lockscreen_notifications_option"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "lockscreen_minimizing_notification"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "lockstar_enabled"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "notification_text_color_inversion"

    const-string/jumbo v4, "Int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "knox_finger_print_plus"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "Global"

    const-string/jumbo v10, "mobile_data_question"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v2, "Secure"

    const-string/jumbo v3, "intelligentscan_without_swipe_to_unlock"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string/jumbo v9, "Global"

    const-string/jumbo v10, "notification_freeform_menuitem"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7f8
    move v1, v13

    goto/16 :goto_3f4
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_24
    if-ge v0, v1, :cond_38

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_38
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public forceBroadcastWhiteKeyguardWallpaper()V
    .registers 2

    const-string/jumbo v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->broadcastChange(Landroid/net/Uri;)V

    return-void
.end method

.method public getActiveThemePackage()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFMMMessage()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFMMPhone()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHomeTimeZone()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockNoticardOpacity()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getLockscreenMinimizingNotification()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x4f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getLockscreenWallpaperTransparent()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getMultiSIMDeviceSIM1On()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getMultiSIMDeviceSIM2On()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getNDigitsPIN()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getNotificationTextColorInversion()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getOpenThemeClockFont()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpenThemeNumericFont()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceBoxBlackList()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceBoxCurrentMusicPkg()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceBoxMediaKeyEventFromAod()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getServiceBoxPageOrder()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceBoxSharePageName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharedDeviceEnabled()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getShortcutAppList()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceCallType(I)I
    .registers 4

    if-nez p1, :cond_11

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public is24HourModeEnabled()Z
    .registers 8

    iget-object v5, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v6, 0x16

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_40

    :cond_16
    const-string/jumbo v0, "12"

    iget-object v5, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v1, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v5, 0x1

    invoke-static {v5, v1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    instance-of v5, v2, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_40

    move-object v4, v2

    check-cast v4, Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x48

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_40

    const-string/jumbo v0, "24"

    :cond_40
    const-string/jumbo v5, "24"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method public isAccessControlEnabled()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isAdaptiveColorMode()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x49

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isAirplaneModeOn()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x1b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public isAodEnabled()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public isAutoWipeEnable()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isAutomaticUnlockEnabled()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isDataUsageReminderEnabled()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DATA_USAGE_REMINDER:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v1, v0, :cond_18

    move v0, v1

    :goto_17
    return v0

    :cond_18
    move v0, v2

    goto :goto_17
.end method

.method public isDualClock()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_12

    move v0, v1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isEasyModeOn()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eq v0, v1, :cond_12

    move v0, v1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isEmergencyMode()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_12

    move v0, v1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isEnableReserveMaxMode()Z
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_23

    move v0, v1

    :goto_22
    return v0

    :cond_23
    move v0, v2

    goto :goto_22

    :cond_25
    move v0, v2

    goto :goto_22
.end method

.method public isEnabledFaceRecognitionFirstScreen()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isEnabledIrisOnFirstScreen()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isEnabledRapidKeyInput()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public isEnabledServiceBoxAlarmPage()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public isEnabledServiceBoxMusicPage()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public isEnabledServiceBoxTodaysPage()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public isEnabledSmartScanRecognitionFirstScreen()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x54

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isIconSquicleMode()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isKidsHomeModeEnabled()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isLiveWallpaperEnabled()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method public isLock2StepVerificationEnabled()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x52

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isLockFunctionsEnabled()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x35

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public isLockStarEnabled()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public isMobileDataConnectionPopupShowing()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x53

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isNavigationBarForceHide()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x42

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public isNormalInHighPerformanceMode()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public isNotificationLaunchFreeformEnabled()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x55

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isOpenThemeLook()Z
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    const/4 v3, 0x2

    if-ne v1, v3, :cond_13

    const/4 v2, 0x1

    :cond_13
    return v2
.end method

.method public isPowerSavingMode()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_23

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_23

    move v0, v1

    :goto_22
    return v0

    :cond_23
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x1d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_35

    move v0, v1

    goto :goto_22

    :cond_35
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public isScreenOffMemoEnabled()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v3, 0x33

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v3, 0x34

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_26

    move v0, v1

    :goto_23
    return v0

    :cond_24
    move v0, v1

    goto :goto_23

    :cond_26
    move v0, v2

    goto :goto_23
.end method

.method public isShortcutsVisibleForMDM()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public isShowBatteryPercentInStatusBar()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public isShowButtonBackground()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isShowFaceWidgetOnAod()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x4c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eq v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isShowFaceWidgetOnKeyguard()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x4c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-gt v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isShowKeyboardButton()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x46

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public isShowNotificationOnKeyguard()Z
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v3, 0x4e

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-gt v0, v1, :cond_24

    move v0, v1

    :goto_23
    return v0

    :cond_24
    move v0, v2

    goto :goto_23

    :cond_26
    move v0, v2

    goto :goto_23
.end method

.method public isShowOwnerInfoOnKeyguard()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x4d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-gt v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isShowRoamingClockOnKeyguard()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x4b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-gt v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isSideSyncEnabled()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public isSimpleStatusBarEnabled()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isSmartStayEnabled()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isUltraPowerSavingMode()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isWhiteCoverWallpaper()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isWhiteKeyguardNavigationBar()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x38

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isWhiteKeyguardStatusBar()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_12

    move v0, v1

    :goto_11
    return v0

    :cond_12
    move v0, v2

    goto :goto_11
.end method

.method public isWhiteKeyguardWallpaper()Z
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_11

    move v0, v1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method synthetic lambda$-com_android_systemui_util_SettingsHelper_10514()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->readSettingsDB()V

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->registerSettingsObserver()V

    return-void
.end method

.method public onUserSwitched()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->readSettingsDB()V

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->registerSettingsObserver()V

    return-void
.end method

.method public varargs registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string/jumbo v4, "SettingsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "*** register listener for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    array-length v2, p2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v2, :cond_77

    iget-object v4, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    const-string/jumbo v4, "SettingsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Object tried to add another listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_58
    if-nez v0, :cond_66

    iget-object v4, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    iget-object v4, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catchall {:try_start_1 .. :try_end_73} :catchall_74

    goto :goto_55

    :catchall_74
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_77
    monitor-exit p0

    return-void
.end method

.method public resetServiceBoxMediaKeyEvent()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_lock_music_media_key_code"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public varargs setAdaptiveColors([I)Z
    .registers 9

    const/4 v4, 0x4

    const/4 v0, 0x4

    array-length v3, p1

    if-eq v3, v4, :cond_10

    const-string/jumbo v3, "SettingsHelper"

    const-string/jumbo v4, "setAdaptiveColors() failed ; must contain 4 colors"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v4, :cond_2d

    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    if-ge v1, v3, :cond_2a

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2d
    const-string/jumbo v3, "SettingsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAdaptiveColors "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_clock_adaptive_colors"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v3, 0x1

    return v3
.end method

.method public setHomeTimeZone(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "homecity_timezone"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public setServiceBoxSharePageName(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_aod_servicebox_page"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method public setShowBatteryPercentInStatusBar(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setVoiceCallType(II)V
    .registers 6

    const/4 v2, -0x2

    if-nez p2, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voicecall_type"

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voicecall_type2"

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    goto :goto_1c
.end method

.method public setWhiteKeyguardNavigationBar(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "white_lockscreen_navigationbar"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setWhiteKeyguardStatusBar(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "white_lockscreen_statusbar"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setWhiteKeyguardWallpaper(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "white_lockscreen_wallpaper"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    const-string/jumbo v6, "SettingsHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "*** unregister listener for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_23
    if-ltz v0, :cond_63

    iget-object v6, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_60

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_3b
    if-ltz v1, :cond_4f

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_4c

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_3b

    :cond_4f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_60

    iget-object v6, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_1 .. :try_end_60} :catchall_65

    :cond_60
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    :cond_63
    monitor-exit p0

    return-void

    :catchall_65
    move-exception v6

    monitor-exit p0

    throw v6
.end method
