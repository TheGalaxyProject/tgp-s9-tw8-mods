.class Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;
.super Ljava/lang/Object;
.source "DynamicIndexableContentMonitor.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/DynamicIndexableContentMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputDevicesMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor$SingletonHolder;
    }
.end annotation


# instance fields
.field private mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mInputManager:Landroid/hardware/input/InputManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;-><init>()V

    return-void
.end method

.method private buildIndex()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    const-class v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/search2/DatabaseIndexingManager;->updateFromClassNameResource(Ljava/lang/String;Z)V

    return-void
.end method

.method static getInstance()Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;
    .registers 1

    invoke-static {}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor$SingletonHolder;->-get0()Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized initialize(Landroid/content/Context;Lcom/android/settings/search2/DatabaseIndexingManager;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iput-object p2, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    const-string/jumbo v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;->buildIndex()V

    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInputDeviceAdded(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;->buildIndex()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;->buildIndex()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;->buildIndex()V

    return-void
.end method

.method declared-synchronized resetForTesting()V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;->mIndexManager:Lcom/android/settings/search2/DatabaseIndexingManager;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
