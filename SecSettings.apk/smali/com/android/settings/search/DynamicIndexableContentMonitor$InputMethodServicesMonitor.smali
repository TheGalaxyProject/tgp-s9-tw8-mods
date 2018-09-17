.class Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;
.super Landroid/database/ContentObserver;
.source "DynamicIndexableContentMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/DynamicIndexableContentMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputMethodServicesMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor$SingletonHolder;
    }
.end annotation


# static fields
.field private static final ENABLED_INPUT_METHODS_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mInputMethodServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "enabled_input_methods"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->ENABLED_INPUT_METHODS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mInputMethodServices:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;-><init>()V

    return-void
.end method

.method private buildIndex(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/search2/DatabaseIndexingManager;->updateFromClassNameResource(Ljava/lang/String;Z)V

    return-void
.end method

.method static getInstance()Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;
    .registers 1

    invoke-static {}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor$SingletonHolder;->-get0()Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized initialize(Landroid/content/Context;Lcom/android/settings/search2/DatabaseIndexingManager;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "android.software.input_methods"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_63

    move-result v0

    if-nez v0, :cond_10

    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-object v5, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_63

    if-eqz v5, :cond_16

    monitor-exit p0

    return-void

    :cond_16
    :try_start_16
    iput-object p2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mInputMethodServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    const-class v5, Lcom/android/settings/language/LanguageAndInputSettings;

    invoke-direct {p0, v5}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->buildIndex(Ljava/lang/Class;)V

    const-class v5, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-direct {p0, v5}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->buildIndex(Ljava/lang/Class;)V

    const-class v5, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-direct {p0, v5}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->buildIndex(Ljava/lang/Class;)V

    const-string/jumbo v5, "input_method"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_49
    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    if-eqz v4, :cond_49

    iget-object v5, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mInputMethodServices:Ljava/util/List;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catchall {:try_start_16 .. :try_end_62} :catchall_63

    goto :goto_49

    :catchall_63
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_66
    :try_start_66
    iget-object v5, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v5, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->ENABLED_INPUT_METHODS_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_63

    monitor-exit p0

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    sget-object v0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->ENABLED_INPUT_METHODS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-class v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-direct {p0, v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->buildIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-direct {p0, v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->buildIndex(Ljava/lang/Class;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-class v0, Lcom/android/settings/language/LanguageAndInputSettings;

    invoke-direct {p0, v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->buildIndex(Ljava/lang/Class;)V

    goto :goto_12
.end method

.method declared-synchronized onPackageAvailable(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_37

    if-nez v2, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mInputMethodServices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_37

    move-result v2

    if-eqz v2, :cond_11

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    invoke-static {p1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->getIMEServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_37

    move-result v2

    if-eqz v2, :cond_26

    :cond_24
    monitor-exit p0

    return-void

    :cond_26
    :try_start_26
    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mInputMethodServices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v2, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-direct {p0, v2}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->buildIndex(Ljava/lang/Class;)V

    const-class v2, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-direct {p0, v2}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->buildIndex(Ljava/lang/Class;)V
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_37

    monitor-exit p0

    return-void

    :catchall_37
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onPackageUnavailable(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mInputMethodServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_1d

    move-result v0

    if-nez v0, :cond_11

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    const-class v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-direct {p0, v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->buildIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-direct {p0, v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->buildIndex(Ljava/lang/Class;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized resetForTesting()V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
