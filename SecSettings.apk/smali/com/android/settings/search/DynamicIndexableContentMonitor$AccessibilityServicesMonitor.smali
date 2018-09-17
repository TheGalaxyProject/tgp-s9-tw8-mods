.class Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;
.super Ljava/lang/Object;
.source "DynamicIndexableContentMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/DynamicIndexableContentMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityServicesMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor$SingletonHolder;
    }
.end annotation


# instance fields
.field private final mAccessibilityServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->mAccessibilityServices:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;-><init>()V

    return-void
.end method

.method private buildIndex()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/search2/DatabaseIndexingManager;->updateFromClassNameResource(Ljava/lang/String;Z)V

    return-void
.end method

.method static getInstance()Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;
    .registers 1

    invoke-static {}, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor$SingletonHolder;->-get0()Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized initialize(Landroid/content/Context;Lcom/android/settings/search2/DatabaseIndexingManager;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_48

    if-eqz v4, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iput-object p2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->buildIndex()V

    const-string/jumbo v4, "accessibility"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_28

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_28

    iget-object v4, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->mAccessibilityServices:Ljava/util/List;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_48

    goto :goto_28

    :catchall_48
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_4b
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onPackageAvailable(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    if-nez v2, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_30

    move-result v2

    if-eqz v2, :cond_11

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    invoke-static {p1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->getAccessibilityServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_30

    move-result v2

    if-eqz v2, :cond_26

    :cond_24
    monitor-exit p0

    return-void

    :cond_26
    :try_start_26
    iget-object v2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->buildIndex()V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_30

    monitor-exit p0

    return-void

    :catchall_30
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onPackageUnavailable(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->mAccessibilityServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_16

    move-result v0

    if-nez v0, :cond_11

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    invoke-direct {p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->buildIndex()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized resetForTesting()V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$AccessibilityServicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
