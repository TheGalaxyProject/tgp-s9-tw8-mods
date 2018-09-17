.class public Lcom/android/server/am/MultiScreenManagerService;
.super Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;
.source "MultiScreenManagerService.java"

# interfaces
.implements Lcom/samsung/android/multiscreen/MultiScreenSettings$OnSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiScreenManagerService$H;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DEBUG:Z

.field private static final DEBUG_PERFORMANCE:Z = true

.field private static final DEBUG_POSITION:Z = false

.field public static final PERMISSION_MANAGE_VIRTUAL_SCREEN:Ljava/lang/String; = "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

.field private static final TAG:Ljava/lang/String;

.field private static final VIRTUALSCREEN_LAYER_MULTIPLIER:I = 0x3e8

.field private static final VIRTUALSCREEN_LAYER_OFFSET:I = 0x1


# instance fields
.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mBindingDisplayIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDualViewDisplay:Landroid/hardware/display/VirtualDisplay;

.field private mDualViewInputMethodEnabled:Z

.field private mExternalScreen:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/VirtualScreen;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/am/MultiScreenManagerService$H;

.field private mInputMethodDisplayId:I

.field private mMultiScreenSettings:Lcom/samsung/android/multiscreen/MultiScreenSettings;

.field private mOffsetMoveBackTime:J

.field private mOffsetStartTime:J

.field private mReadyToUpdateOffset:Z

.field private mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mStartUpdateOffset:Z

.field private mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

.field private mVirtualScreenByPackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualScreenByPid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualScreenPosition:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualScreens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/VirtualScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingRemovedDisplayId:I

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/MultiScreenManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/am/MultiScreenManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/am/MultiScreenManagerService;->-assertionsDisabled:Z

    const-class v0, Lcom/android/server/am/MultiScreenManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/multiscreen/MultiScreenManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/multiscreen/IMultiScreenManager$Stub;-><init>()V

    new-instance v0, Lcom/android/server/am/MultiScreenManagerService$H;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MultiScreenManagerService$H;-><init>(Lcom/android/server/am/MultiScreenManagerService;Lcom/android/server/am/MultiScreenManagerService$H;)V

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mHandler:Lcom/android/server/am/MultiScreenManagerService$H;

    iput-wide v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mOffsetStartTime:J

    iput-wide v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mOffsetMoveBackTime:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenPosition:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mReadyToUpdateOffset:Z

    iput-boolean v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mStartUpdateOffset:Z

    iput-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iput v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mInputMethodDisplayId:I

    iput-boolean v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewInputMethodEnabled:Z

    iput v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mWaitingRemovedDisplayId:I

    return-void
.end method

.method private addBindingDisplayId(II)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_12
    return-void

    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_12
.end method

.method private dumpServerLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "MULTISCREEN MANAGER (dumpsys multiscreen)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private dumpSettingsLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "MULTISCREEN MANAGER settings (dumpsys multiscreen settings)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mMultiScreenSettings:Lcom/samsung/android/multiscreen/MultiScreenSettings;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mMultiScreenSettings:Lcom/samsung/android/multiscreen/MultiScreenSettings;

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/multiscreen/MultiScreenSettings;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_26
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private dumpVirtualScreenLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "List of VirtualScreens :"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_17

    const-string/jumbo v3, "    No VirtualScreen"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_41

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    const-string/jumbo v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_41
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "List of ExternalScreens :"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_58

    const-string/jumbo v3, "    No ExternalScreen"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_58
    const/4 v1, 0x0

    :goto_59
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_82

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    const-string/jumbo v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_82
    return-void
.end method

.method private dumpVirtualScreenManagerLocked(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 11

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "List of Packages :"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_21

    const-string/jumbo v5, "    No Packages"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v5, "    ProcessId ["

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "] displayId="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    if-eqz p3, :cond_21

    const-string/jumbo v5, "      virtualscreen="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_21

    :cond_65
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "List of Binding VirtualScreen Ids :"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_7c

    const-string/jumbo v5, "    No Binding VirtualScreen"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7c
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_7e
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_b9

    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string/jumbo v5, "    "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "Bind DisplayId ["

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "]"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " Main DisplayId "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_b9
    return-void
.end method

.method public static getBooleanMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_2e

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_15
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method private getTopRunningTaskLocked(I)Lcom/android/server/am/TaskRecord;
    .registers 10

    const/4 v7, 0x0

    sget-boolean v4, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v4, :cond_2e

    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTopRunningTaskLocked() displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", caller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_31
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_62

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_42
    if-ltz v0, :cond_62

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_5f

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-eqz v4, :cond_5f

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;
    :try_end_59
    .catchall {:try_start_31 .. :try_end_59} :catchall_67

    move-result-object v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    :cond_5f
    add-int/lit8 v0, v0, -0x1

    goto :goto_42

    :cond_62
    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v7

    :catchall_67
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method private removeBindingDisplayId(II)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1d
    return-void
.end method

.method private unBindVirtualScreenLocked(I)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v0, -0x1

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/MultiScreenManagerService;->removeBindingDisplayId(II)V

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->unbind()V

    if-eqz v0, :cond_28

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    if-eqz v1, :cond_28

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/MultiScreenManagerService;->removeBindingDisplayId(II)V

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->unbind()V

    :cond_28
    const/4 v3, 0x1

    return v3

    :cond_2a
    return v4
.end method


# virtual methods
.method public allowAppTransition(Lcom/android/server/am/ActivityRecord;)Z
    .registers 7

    const/4 v4, 0x0

    if-eqz p1, :cond_70

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->allowAppTransition()Z

    move-result v2

    return v2

    :cond_18
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->allowAppTransition()Z

    move-result v2

    return v2

    :cond_33
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_70

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    if-eqz v1, :cond_70

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->allowAppTransition()Z

    move-result v2

    return v2

    :cond_70
    const/4 v2, 0x1

    return v2
.end method

.method public applyMultiScreenAttrs(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/MultiScreenAttrs;
    .registers 9

    const/4 v5, 0x1

    new-instance v0, Lcom/android/server/am/MultiScreenAttrs;

    invoke-direct {v0}, Lcom/android/server/am/MultiScreenAttrs;-><init>()V

    sget-boolean v2, Lcom/android/server/am/MultiScreenManagerService;->-assertionsDisabled:Z

    if-nez v2, :cond_14

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-nez v2, :cond_14

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_14
    sget-boolean v2, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v2, :cond_49

    sget-object v2, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "applyMultiScreenAttrs r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", launchDisplayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getLaunchParams()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-virtual {p0, p2}, Lcom/android/server/am/MultiScreenManagerService;->isVirtualScreen(I)Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-virtual {v0, p2}, Lcom/android/server/am/MultiScreenAttrs;->setBaseDisplayId(I)V

    :cond_60
    :goto_60
    invoke-virtual {v1}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6b

    invoke-virtual {v0, v5}, Lcom/android/server/am/MultiScreenAttrs;->setBaseActivity(Z)V

    :cond_6b
    invoke-virtual {v1}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_76

    invoke-virtual {v0, v5}, Lcom/android/server/am/MultiScreenAttrs;->setBaseForceUpdate(Z)V

    :cond_76
    sget-boolean v2, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v2, :cond_93

    sget-object v2, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "applyMultiScreenAttrs attrs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    return-object v0

    :cond_94
    invoke-virtual {v1}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->getBaseDisplayId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/MultiScreenManagerService;->isVirtualScreen(I)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {v1}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->getBaseDisplayId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/MultiScreenAttrs;->setBaseDisplayId(I)V

    goto :goto_60
.end method

.method public assignLayer(III)V
    .registers 9

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    if-eqz v0, :cond_2a

    invoke-virtual {v0, p3}, Lcom/android/server/am/VirtualScreen;->setLayer(I)V

    :cond_2a
    return-void

    :cond_2b
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    if-eqz v0, :cond_3c

    if-lez p3, :cond_3c

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/VirtualScreen;->setLayer(I)V

    :cond_3c
    return-void
.end method

.method public bindVirtualScreen(I)Z
    .registers 10

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "bindVirtualScreen() There wasn\'t Main Virtual Screen."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1a
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_1d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    if-eqz v2, :cond_4d

    invoke-virtual {v2, p1}, Lcom/android/server/am/VirtualScreen;->setBindDisplayId(I)Z

    move-result v3

    if-nez v3, :cond_4d

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "bindVirtualScreen() Fail to bind display. Already binded display"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_1d .. :try_end_48} :catchall_c8

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :cond_4d
    :try_start_4d
    sget-boolean v3, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_75

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bindVirtualScreen() pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "binding with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/MultiScreenManagerService;->addBindingDisplayId(II)V

    if-eqz p1, :cond_c2

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    if-eqz v2, :cond_97

    invoke-virtual {v2, v0}, Lcom/android/server/am/VirtualScreen;->setBindDisplayId(I)Z

    move-result v3

    if-nez v3, :cond_97

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "bindVirtualScreen() Fail to bind display. Already binded display"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_4d .. :try_end_92} :catchall_c8

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :cond_97
    :try_start_97
    sget-boolean v3, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_bf

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bindVirtualScreen() pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "binding with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bf
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/MultiScreenManagerService;->addBindingDisplayId(II)V
    :try_end_c2
    .catchall {:try_start_97 .. :try_end_c2} :catchall_c8

    :cond_c2
    const/4 v3, 0x1

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_c8
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public canLaunchHome(I)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    if-nez v0, :cond_d

    const/4 v1, 0x0

    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->hasZeroPagePolicy()Z

    move-result v1

    return v1
.end method

.method public cleanupVirtualScreen(I)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    if-eqz v1, :cond_3b

    sget-boolean v2, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v2, :cond_27

    sget-object v2, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cleanupVirtualScreen() for display #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v0

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->remove()V

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/MultiScreenManagerService;->removeBindingDisplayId(II)V

    if-eqz v0, :cond_3b

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/MultiScreenManagerService;->removeBindingDisplayId(II)V

    :cond_3b
    return-void
.end method

.method public clearOffset(I)Z
    .registers 9

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_28

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/VirtualScreen;

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getOffsetUid()I

    move-result v4

    if-ne v4, p1, :cond_25

    invoke-virtual {v3, v5, v5}, Lcom/android/server/am/VirtualScreen;->setOffset(II)V

    const/4 v0, 0x1

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_28
    if-eqz v0, :cond_53

    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clearOffset, offset is clearing uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", caller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return v0
.end method

.method public clearTransition()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/am/VirtualScreen;->setOffset(II)V

    iput-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    return-void
.end method

.method public clearVirtualScreenPosition()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mReadyToUpdateOffset:Z

    return-void
.end method

.method public clearWaitingRemovedDisplay(I)Z
    .registers 5

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiScreenFeatures;->SAFE_DEBUG:Z

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearWaitingForRemvoingDualView, displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mWaitingRemovedDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mWaitingRemovedDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    iget v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mWaitingRemovedDisplayId:I

    if-ne v0, p1, :cond_43

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mWaitingRemovedDisplayId:I

    const/4 v0, 0x1

    return v0

    :cond_43
    const/4 v0, 0x0

    return v0
.end method

.method public computeScreenConfiguration(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->computeScreenConfiguration()V

    :cond_d
    return-void
.end method

.method public createDualViewDisplay()I
    .registers 21

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v3, :cond_d9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "display_size_forced"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_50

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_50

    const/16 v3, 0x2c

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    if-lez v17, :cond_50

    const/16 v3, 0x2c

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move/from16 v0, v17

    if-ne v3, v0, :cond_50

    const/4 v3, 0x0

    :try_start_38
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v3, v17, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_4f} :catch_e9

    move-result v7

    :cond_50
    :goto_50
    :try_start_50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "display_density_forced"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_5f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_50 .. :try_end_5f} :catch_e6

    move-result v8

    :goto_60
    if-eqz v6, :cond_64

    if-nez v7, :cond_d6

    :cond_64
    :goto_64
    new-instance v18, Landroid/graphics/Point;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v8

    :cond_84
    if-lez v6, :cond_b6

    if-lez v7, :cond_b6

    if-lez v8, :cond_b6

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "DualView"

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x109

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewDisplay:Landroid/hardware/display/VirtualDisplay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v3, :cond_b6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v3}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v14

    :cond_b6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "touch_keyboard"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewInputMethodEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewInputMethodEnabled:Z

    if-eqz v3, :cond_d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/MultiScreenManagerService;->setInputMethodDisplay(I)V

    :cond_d5
    :goto_d5
    return v14

    :cond_d6
    if-nez v8, :cond_84

    goto :goto_64

    :cond_d9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v3}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v14

    goto :goto_d5

    :catch_e6
    move-exception v15

    goto/16 :goto_60

    :catch_e9
    move-exception v16

    goto/16 :goto_50
.end method

.method public createVirtualScreen(Ljava/lang/String;Landroid/graphics/Rect;I)I
    .registers 28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createVirtualScreen: Can\'t create virtualscreen in the emergency mode."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    return v3

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSafeMode:Z

    if-eqz v3, :cond_30

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createVirtualScreen: Can\'t create virtualscreen in the safe mode."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    return v3

    :cond_30
    if-nez p2, :cond_3c

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createVirtualScreen() Invalid bound"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    return v3

    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_86

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: createVirtualScreen() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " requires PERMISSION_MANAGE_VIRTUAL_SCREEN permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/SecurityException;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    monitor-enter v23

    :try_start_8d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v10, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19a

    sget-boolean v3, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_af

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createVirtualScreen: don\'t exist displayContent. create new one!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    if-eqz p2, :cond_195

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    new-instance v16, Landroid/util/DisplayMetrics;

    invoke-direct/range {v16 .. v16}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getDisplayRotation(I)I

    move-result v21

    const/4 v3, 0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_dd

    const/4 v3, 0x3

    move/from16 v0, v21

    if-ne v0, v3, :cond_118

    :cond_dd
    const/16 v20, 0x1

    :goto_df
    if-eqz v20, :cond_11b

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    :goto_e5
    if-eqz v20, :cond_120

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    :goto_eb
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "VirtualScreen"

    move-object/from16 v0, v16

    iget v8, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x89

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v11

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v11, :cond_125

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "createVirtualScreen() Invalid display"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_112
    .catchall {:try_start_8d .. :try_end_112} :catchall_1b9

    const/4 v3, -0x1

    monitor-exit v23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_118
    const/16 v20, 0x0

    goto :goto_df

    :cond_11b
    :try_start_11b
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    goto :goto_e5

    :cond_120
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    goto :goto_eb

    :cond_125
    invoke-virtual {v11}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v10

    sget-boolean v3, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_14a

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createVirtualScreen displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/am/VirtualScreen;

    move-object/from16 v9, p0

    move-object/from16 v12, p2

    move/from16 v13, p3

    invoke-direct/range {v8 .. v13}, Lcom/android/server/am/VirtualScreen;-><init>(Lcom/android/server/am/MultiScreenManagerService;ILandroid/hardware/display/VirtualDisplay;Landroid/graphics/Rect;I)V

    invoke-virtual {v3, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->performLayoutForAppTransition()V

    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_179

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/VirtualScreen;

    if-eqz v22, :cond_179

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/server/am/VirtualScreen;->setAllowAppTransition(Z)V

    :cond_179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_195
    .catchall {:try_start_11b .. :try_end_195} :catchall_1b9

    :cond_195
    :goto_195
    monitor-exit v23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v10

    :cond_19a
    :try_start_19a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_195

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/MultiScreenManagerService;->recreateVirtualScreen(Ljava/lang/String;Landroid/graphics/Rect;I)I
    :try_end_1b3
    .catchall {:try_start_19a .. :try_end_1b3} :catchall_1b9

    move-result v18

    if-lez v18, :cond_195

    move/from16 v10, v18

    goto :goto_195

    :catchall_1b9
    move-exception v3

    monitor-exit v23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public createVirtualScreenAnimation(Z)Landroid/view/animation/Animation;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/VirtualScreen;->createTransitAnimation(ZLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_e
    return-object v1
.end method

.method public detachActivityDisplay(I)V
    .registers 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mHandler:Lcom/android/server/am/MultiScreenManagerService$H;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/MultiScreenManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mHandler:Lcom/android/server/am/MultiScreenManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MultiScreenManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_45

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission Denial: can\'t dump MultiScreenManager from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " without permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_45
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_47
    array-length v6, p3

    if-ge v3, v6, :cond_54

    aget-object v2, p3, v3

    if-eqz v2, :cond_54

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_80

    :cond_54
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-eqz v1, :cond_fb

    :try_start_5a
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_f6

    :try_start_5d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string/jumbo v6, "  "

    invoke-direct {p0, v6, p2}, Lcom/android/server/am/MultiScreenManagerService;->dumpServerLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    const-string/jumbo v6, "  "

    invoke-direct {p0, v6, p2}, Lcom/android/server/am/MultiScreenManagerService;->dumpSettingsLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    const-string/jumbo v6, "  "

    invoke-direct {p0, v6, p2, v1}, Lcom/android/server/am/MultiScreenManagerService;->dumpVirtualScreenManagerLocked(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    const-string/jumbo v6, "  "

    invoke-direct {p0, v6, p2}, Lcom/android/server/am/MultiScreenManagerService;->dumpVirtualScreenLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_78
    .catchall {:try_start_5d .. :try_end_78} :catchall_f0

    :try_start_78
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_f6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_80
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_54

    add-int/lit8 v3, v3, 0x1

    const-string/jumbo v6, "-h"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c4

    const-string/jumbo v6, "MultiScreen manager dump options:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  [-h] [cmd] ..."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  cmd may be one of:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "    c[ontext]: context relation informations"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "    cc: context relation informations with call stack information"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "    cs: simple context relation informations"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "    s[ettings]: multi screen settings"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  -a: include all available server state"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_c4
    const-string/jumbo v6, "-a"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d0

    const/4 v1, 0x1

    goto/16 :goto_47

    :cond_d0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; use -h for help"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_47

    :catchall_f0
    move-exception v6

    :try_start_f1
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6
    :try_end_f6
    .catchall {:try_start_f1 .. :try_end_f6} :catchall_f6

    :catchall_f6
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_fb
    :try_start_fb
    array-length v6, p3

    if-ge v3, v6, :cond_15d

    aget-object v0, p3, v3

    add-int/lit8 v3, v3, 0x1

    const-string/jumbo v6, "settings"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_114

    const-string/jumbo v6, "s"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12e

    :cond_114
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7
    :try_end_117
    .catchall {:try_start_fb .. :try_end_117} :catchall_f6

    :try_start_117
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string/jumbo v6, "  "

    invoke-direct {p0, v6, p2}, Lcom/android/server/am/MultiScreenManagerService;->dumpSettingsLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_120
    .catchall {:try_start_117 .. :try_end_120} :catchall_128

    :try_start_120
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_124
    .catchall {:try_start_120 .. :try_end_124} :catchall_f6

    :cond_124
    :goto_124
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_128
    move-exception v6

    :try_start_129
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :cond_12e
    const-string/jumbo v6, "virtual"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_140

    const-string/jumbo v6, "v"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_124

    :cond_140
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7
    :try_end_143
    .catchall {:try_start_129 .. :try_end_143} :catchall_f6

    :try_start_143
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string/jumbo v6, "  "

    invoke-direct {p0, v6, p2, v1}, Lcom/android/server/am/MultiScreenManagerService;->dumpVirtualScreenManagerLocked(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    const-string/jumbo v6, "  "

    invoke-direct {p0, v6, p2}, Lcom/android/server/am/MultiScreenManagerService;->dumpVirtualScreenLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_152
    .catchall {:try_start_143 .. :try_end_152} :catchall_157

    :try_start_152
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_124

    :catchall_157
    move-exception v6

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    :cond_15d
    iget-object v7, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7
    :try_end_160
    .catchall {:try_start_152 .. :try_end_160} :catchall_f6

    :try_start_160
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string/jumbo v6, "  "

    invoke-direct {p0, v6, p2}, Lcom/android/server/am/MultiScreenManagerService;->dumpServerLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    const-string/jumbo v6, "  "

    invoke-direct {p0, v6, p2}, Lcom/android/server/am/MultiScreenManagerService;->dumpSettingsLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    const-string/jumbo v6, "  "

    invoke-direct {p0, v6, p2, v1}, Lcom/android/server/am/MultiScreenManagerService;->dumpVirtualScreenManagerLocked(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    const-string/jumbo v6, "  "

    invoke-direct {p0, v6, p2}, Lcom/android/server/am/MultiScreenManagerService;->dumpVirtualScreenLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_17b
    .catchall {:try_start_160 .. :try_end_17b} :catchall_180

    :try_start_17b
    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_124

    :catchall_180
    move-exception v6

    monitor-exit v7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6
    :try_end_186
    .catchall {:try_start_17b .. :try_end_186} :catchall_f6
.end method

.method public getBaseDisplayId(Lcom/android/server/am/TaskRecord;)I
    .registers 5

    if-eqz p1, :cond_25

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/MultiScreenAttrs;->getBaseActivity()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v2

    return v2

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_25
    const/4 v2, 0x0

    return v2
.end method

.method public getBuiltInDisplayIdForDualView(I)I
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_1a

    invoke-static {v2}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_19

    return v1

    :cond_19
    return v2

    :cond_1a
    return v1
.end method

.method public getDisplayId(I)I
    .registers 9

    const/4 v0, -0x1

    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8a

    :try_start_7
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-nez v3, :cond_7d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid task id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " : getScreen() from pid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", uid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4c} :catch_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_8a

    :catch_4c
    move-exception v1

    :try_start_4d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_8a

    :cond_50
    :goto_50
    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    sget-boolean v4, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v4, :cond_7c

    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getScreen(taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    return v0

    :cond_7d
    :try_start_7d
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_50

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iget v0, v4, Lcom/android/server/am/ActivityStack;->mDisplayId:I
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_89} :catch_4c
    .catchall {:try_start_7d .. :try_end_89} :catchall_8a

    goto :goto_50

    :catchall_8a
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method public getDisplayIdByPackage(Ljava/lang/String;)I
    .registers 6

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDisplayIdByPackage() There isn\'t Virtual Screen. package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_5b

    const/4 v0, -0x1

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_2d
    :try_start_2d
    sget-boolean v0, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDisplayIdByPackage() package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_55
    .catchall {:try_start_2d .. :try_end_55} :catchall_5b

    move-result v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_5b
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method getDisplayRect(I)Landroid/graphics/Rect;
    .registers 6

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, v1, Landroid/graphics/Rect;->right:I

    :cond_1f
    return-object v1
.end method

.method public getDualViewDisplayId()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, -0x1

    return v0
.end method

.method public getInputMethodDisplayId()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mInputMethodDisplayId:I

    return v0
.end method

.method public getLayer(II)I
    .registers 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    if-nez v0, :cond_c

    return p2

    :cond_c
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getLayer()I

    move-result v1

    if-lez v1, :cond_17

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getLayer()I

    move-result v1

    return v1

    :cond_17
    add-int/lit16 v1, p2, 0x3e8

    return v1
.end method

.method public getOffset(I)Landroid/graphics/Point;
    .registers 6

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-eqz v2, :cond_a

    return-object v0

    :cond_a
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    :cond_1f
    return-object v0
.end method

.method public getOrCreateStack(IIZZ)Lcom/android/server/am/ActivityStack;
    .registers 9

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiScreenFeatures;->DEBUG_MULTISCREEN:Z

    if-eqz v1, :cond_4e

    sget-object v1, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getOrCreateStack: stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " createStackIfNeeded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " createOnTop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    invoke-static {p1, p2}, Lcom/samsung/android/multiscreen/MultiScreenManager;->getStackIdAdjustedToDisplayId(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v0, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method public getPosition(I)I
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    if-nez v0, :cond_d

    const/4 v1, 0x0

    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getPosition()I

    move-result v1

    return v1
.end method

.method public getVirtualScreenDisplayId(Landroid/os/IBinder;)I
    .registers 9

    const/4 v6, -0x1

    if-eqz p1, :cond_8f

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-nez v3, :cond_51

    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid arguments. token="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " : getDisplayId() from pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_89

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v6

    :cond_51
    :try_start_51
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_78
    .catchall {:try_start_51 .. :try_end_78} :catchall_89

    move-result v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_7e
    :try_start_7e
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v3}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_89

    move-result v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_89
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    :cond_8f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    :cond_b0
    return v6
.end method

.method public getVirtualScreenPosition(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/PointF;)Z
    .registers 16

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-boolean v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mStartUpdateOffset:Z

    if-eqz v5, :cond_b

    return v8

    :cond_b
    if-eqz p2, :cond_1e

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v5

    const/16 v6, 0x7d0

    if-lt v5, v6, :cond_16

    return v8

    :cond_16
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1e

    return v8

    :cond_1e
    if-nez p3, :cond_29

    sget-object v5, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getVirtualScreenPosition() position is null."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_29
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    if-eqz v4, :cond_3c

    iget-boolean v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mReadyToUpdateOffset:Z

    if-nez v5, :cond_38

    return v8

    :cond_38
    invoke-virtual {p3, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return v11

    :cond_3c
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_87

    const/4 v1, 0x0

    :goto_4a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_87

    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/VirtualScreen;

    if-eqz v3, :cond_84

    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v5

    if-eqz v5, :cond_84

    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v3, v5}, Lcom/android/server/am/VirtualScreen;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_84

    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    iput v5, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    iput v5, p3, Landroid/graphics/PointF;->y:F

    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_87
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/VirtualScreen;

    if-eqz v3, :cond_bf

    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    invoke-virtual {v3, v2}, Lcom/android/server/am/VirtualScreen;->getOffsetByPosition(F)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v6

    iput v5, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    invoke-virtual {v3, v2}, Lcom/android/server/am/VirtualScreen;->getOffsetByPosition(F)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    iput v5, p3, Landroid/graphics/PointF;->y:F

    :cond_bf
    iget v5, p3, Landroid/graphics/PointF;->x:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_cc

    iget v5, p3, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_cc

    return v8

    :cond_cc
    return v11
.end method

.method public hasFocusPolicy(I)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_6

    const/4 v1, 0x1

    return v1

    :cond_6
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    if-nez v0, :cond_11

    return v2

    :cond_11
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->hasFocusPolicy()Z

    move-result v1

    return v1
.end method

.method public hasLayoutPolicy(I)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    if-nez v0, :cond_d

    const/4 v1, 0x0

    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->hasLayoutPolicy()Z

    move-result v1

    return v1
.end method

.method public hasMovingScreenOffset()Z
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getDisplayId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/MultiScreenManagerService;->isMoving(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    return v2

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_22
    const/4 v2, 0x0

    return v2
.end method

.method public hasReuseTaskPolicy(I)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    if-nez v0, :cond_d

    const/4 v1, 0x0

    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->hasReuseTaskPolicy()Z

    move-result v1

    return v1
.end method

.method public isExternalScreen(I)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    if-nez v0, :cond_d

    const/4 v1, 0x0

    return v1

    :cond_d
    const/4 v1, 0x1

    return v1
.end method

.method public isMoving(I)Z
    .registers 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v1

    if-eqz v1, :cond_54

    :cond_17
    sget-object v1, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMoving() called from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " offsetX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " offsetY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_54
    return v2
.end method

.method public isTransiting(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getDisplayId()I

    move-result v0

    if-eq v0, p1, :cond_14

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_16

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public isVirtualScreen(I)Z
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    if-nez v0, :cond_d

    const/4 v1, 0x0

    return v1

    :cond_d
    const/4 v1, 0x1

    return v1
.end method

.method public isVisibleVirtualScreen(I)Z
    .registers 5

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiScreenManagerService;->isVirtualScreen(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isVirtualScreenDragging()Z

    move-result v1

    return v1

    :cond_1d
    return v2
.end method

.method public isWaitingForVirtualScreen(I)Z
    .registers 9

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    if-nez v2, :cond_44

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1d
    if-ltz v1, :cond_43

    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v3

    if-eqz v3, :cond_40

    :cond_3f
    return v4

    :cond_40
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    :cond_43
    return v5

    :cond_44
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v3

    if-nez v3, :cond_50

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v3

    if-eqz v3, :cond_52

    :cond_50
    move v3, v4

    :goto_51
    return v3

    :cond_52
    move v3, v5

    goto :goto_51
.end method

.method public isWaitingRemovedDisplay()Z
    .registers 3

    iget v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mWaitingRemovedDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public moveTaskBackToDisplayIfNeeded(Lcom/android/server/am/TaskRecord;ZZ)Z
    .registers 16

    const/4 v11, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    :goto_7
    if-eqz v5, :cond_d

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v8, :cond_34

    :cond_d
    sget-object v8, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded(): root activity or app is null, task="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", rootActivity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_32
    const/4 v5, 0x0

    goto :goto_7

    :cond_34
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v8}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v1

    if-eqz v1, :cond_1f9

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v8

    if-eq v1, v8, :cond_1f9

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v8}, Lcom/android/server/am/MultiScreenAttrs;->getBaseActivity()Z

    move-result v8

    if-nez v8, :cond_6f

    sget-object v8, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded(): root is not base activity, task="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", rootActivity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_6f
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v8, :cond_81

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v8, :cond_81

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-eqz v8, :cond_de

    :cond_81
    const/4 v2, -0x1

    iget-object v8, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cf

    iget-object v8, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_a6
    :goto_a6
    iget-object v8, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/VirtualScreen;

    if-eqz v7, :cond_ce

    sget-object v8, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded(): reset offset!, app created virtual screen is crashing or not responding, app="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v11, v11}, Lcom/android/server/am/VirtualScreen;->setOffset(II)V

    :cond_ce
    return v11

    :cond_cf
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/am/MultiScreenManagerService;->isVirtualScreen(I)Z

    move-result v8

    if-eqz v8, :cond_a6

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v2

    goto :goto_a6

    :cond_de
    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-eqz v8, :cond_107

    sget-object v8, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded(): The task is clearing, task="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", rootActivity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_107
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-eq v8, p1, :cond_136

    sget-object v8, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded(): The task is not top, task="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", rootActivity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_136
    if-eqz p3, :cond_180

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_13f
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_158

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_155

    add-int/lit8 v4, v4, -0x1

    :cond_155
    add-int/lit8 v3, v3, 0x1

    goto :goto_13f

    :cond_158
    const/4 v8, 0x1

    if-le v4, v8, :cond_180

    sget-object v8, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded(): The task has more than one activity, task="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", rootActivity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_180
    if-eqz p2, :cond_1af

    iget-object v8, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/VirtualScreen;

    iput-object v8, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    iget-object v8, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-eqz v8, :cond_1af

    iget-object v8, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreen;->prepareTransition()V

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_1af

    const/16 v6, 0x9

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v8}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v8

    if-eqz v8, :cond_1a7

    const/16 v6, 0x12d

    :cond_1a7
    iget-object v8, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v6, v11}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    invoke-virtual {v5, v11}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    :cond_1af
    sget-boolean v8, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v8, :cond_1f2

    sget-object v8, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded() need to change display="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", task="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", rootActivity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", caller="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x5

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f2
    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v8, v1}, Lcom/android/server/am/MultiScreenManagerService;->moveTaskToDisplay(II)Z

    move-result v8

    return v8

    :cond_1f9
    return v11
.end method

.method public moveTaskToDisplay(II)Z
    .registers 10

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v5, "moveTaskToDisplay()"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_50

    move-result-wide v0

    :try_start_15
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-nez v2, :cond_3f

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveTaskToDisplay: No task for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_15 .. :try_end_36} :catchall_4b

    :try_start_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_50

    const/4 v3, 0x0

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_3f
    :try_start_3f
    invoke-virtual {p0, v2, p2}, Lcom/android/server/am/MultiScreenManagerService;->moveTaskToDisplayLocked(Lcom/android/server/am/TaskRecord;I)Z
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4b

    move-result v3

    :try_start_43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_50

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_4b
    move-exception v3

    :try_start_4c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    :catchall_50
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method moveTaskToDisplayLocked(Lcom/android/server/am/TaskRecord;I)Z
    .registers 16

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToDisplayLocked: to display #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_44

    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "moveTaskToDisplayLocked: No activity to move"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_44
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v7

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/android/server/am/MultiScreenManagerService;->getOrCreateStack(IIZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    if-nez v11, :cond_5b

    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "moveTaskToDisplayLocked: Couldn\'t create stack"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_5b
    iget v0, v7, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget v1, v11, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne v0, v1, :cond_87

    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToDisplayLocked: fromStack and toStack is in a equal display, fromStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", toStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_87
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiScreenManagerService;->getTopRunningTaskLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v8

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    if-eqz p2, :cond_b8

    const/4 v5, 0x1

    :goto_96
    const-string/jumbo v6, "moveTaskToStack"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    if-eqz p2, :cond_c8

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-nez v8, :cond_aa

    if-nez v12, :cond_ba

    :cond_aa
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v1, "moveTaskToDisplayLocked"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    :goto_b3
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    const/4 v0, 0x1

    return v0

    :cond_b8
    const/4 v5, 0x0

    goto :goto_96

    :cond_ba
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto :goto_b3

    :cond_c8
    if-eqz v9, :cond_d0

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v0

    if-eqz v0, :cond_d5

    :cond_d0
    const/4 v0, 0x1

    :goto_d1
    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_b3

    :cond_d5
    const/4 v0, 0x0

    goto :goto_d1
.end method

.method public moveToDisplay(Landroid/os/IBinder;I)Z
    .registers 12

    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_85

    move-result-wide v2

    :try_start_a
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    sget-boolean v5, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v5, :cond_36

    sget-object v5, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveToDisplay() displayId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " caller="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    if-nez v0, :cond_8b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid arguments. token="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " displayId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " : moveToDisplay() from pid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_80
    .catchall {:try_start_a .. :try_end_80} :catchall_80

    :catchall_80
    move-exception v5

    :try_start_81
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_85

    :catchall_85
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    :cond_8b
    :try_start_8b
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-eqz v4, :cond_95

    iget v5, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-gez v5, :cond_d2

    :cond_95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid arguments. callerTaskId=-1 displayId= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " : moveToDisplay() from pid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d2
    invoke-virtual {p0, v4, p2}, Lcom/android/server/am/MultiScreenManagerService;->moveTaskToDisplayLocked(Lcom/android/server/am/TaskRecord;I)Z
    :try_end_d5
    .catchall {:try_start_8b .. :try_end_d5} :catchall_80

    move-result v5

    :try_start_d6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_85

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v5
.end method

.method public moveVirtualScreenToDisplay(I)Z
    .registers 10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    sget-object v5, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "moveVirtualScreenToDisplay() package doesn\'t exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5

    :cond_1a
    iget-object v6, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_1d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MultiScreenManagerService;->moveVirtualScreenToDisplayLocked(II)Z

    move-result v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_40

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :catchall_40
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method moveVirtualScreenToDisplayLocked(II)Z
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2b

    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveVirtualScreenToDisplay - virtualScreenDisplayId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") doesn\'t exist!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_2b
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_2e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v6, :cond_4c

    :cond_3f
    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "moveVirtualScreenToDisplayLocked(): stack is empty"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_7e

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :cond_4c
    :try_start_4c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v6, :cond_79

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget v4, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v4, p2}, Lcom/android/server/am/MultiScreenManagerService;->moveTaskToDisplay(II)Z
    :try_end_73
    .catchall {:try_start_4c .. :try_end_73} :catchall_7e

    move-result v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :cond_79
    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v6

    :catchall_7e
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method public notifyFinishDragVirtualScreen()V
    .registers 6

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_13

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public onChange(Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method public performClearTaskLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 7

    if-eqz p1, :cond_47

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getLaunchParams()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;

    invoke-virtual {v4}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_47

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-eqz v4, :cond_47

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_47

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_33
    if-ge v1, v2, :cond_47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-eq v4, v3, :cond_44

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_47
    return-void
.end method

.method public recreateVirtualScreen(Ljava/lang/String;Landroid/graphics/Rect;I)I
    .registers 16

    const/4 v5, -0x1

    if-nez p2, :cond_c

    sget-object v1, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "recreateVirtualScreen() Invalid bound"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_c
    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_50

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: recreateVirtualScreen() from pid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", uid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " requires PERMISSION_MANAGE_VIRTUAL_SCREEN permission"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_50
    iget-object v11, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_53
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/VirtualScreen;

    if-eqz v10, :cond_10f

    invoke-virtual {v10}, Lcom/android/server/am/VirtualScreen;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v6

    move-object v9, p2

    sget-object v1, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recreateVirtualScreen() displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10f

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v1, v3, :cond_c2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v1, v3, :cond_ed

    :cond_c2
    invoke-virtual {p0, p1, v8}, Lcom/android/server/am/MultiScreenManagerService;->removeVirtualScreen(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/MultiScreenManagerService;->createVirtualScreen(Ljava/lang/String;Landroid/graphics/Rect;I)I

    move-result v2

    if-lez v2, :cond_10f

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/MultiScreenManagerService;->bindVirtualScreen(I)Z
    :try_end_e8
    .catchall {:try_start_53 .. :try_end_e8} :catchall_11c

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_ed
    :try_start_ed
    new-instance v0, Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v10}, Lcom/android/server/am/VirtualScreen;->getDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object v3

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/VirtualScreen;-><init>(Lcom/android/server/am/MultiScreenManagerService;ILandroid/hardware/display/VirtualDisplay;Landroid/graphics/Rect;I)V

    invoke-virtual {v10}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/VirtualScreen;->setBindDisplayId(I)Z

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_10a
    .catchall {:try_start_ed .. :try_end_10a} :catchall_11c

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_10f
    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    sget-object v1, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "recreateVirtualScreen() failed to recreate virtual screen."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catchall_11c
    move-exception v1

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method registerBroadcastReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/MultiScreenManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/MultiScreenManagerService$1;-><init>(Lcom/android/server/am/MultiScreenManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public relinquishVirtualScreenAttrs(Lcom/android/server/am/ActivityRecord;)V
    .registers 13

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v9}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_7d

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_19
    add-int/lit8 v9, v0, -0x1

    if-ge v1, v9, :cond_2b

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v9, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_7e

    :cond_2b
    if-nez v3, :cond_5e

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v7, v9, :cond_5e

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_5e

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_5e

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5e

    move-object v3, v4

    :cond_5e
    if-eqz v3, :cond_7d

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-ne v3, v9, :cond_7d

    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v9, v2}, Lcom/android/server/am/MultiScreenAttrs;->setBaseDisplayId(I)V

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v9}, Lcom/android/server/am/MultiScreenAttrs;->getBaseActivity()Z

    move-result v9

    if-eqz v9, :cond_7d

    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/am/MultiScreenAttrs;->setBaseActivity(Z)V

    :cond_7d
    return-void

    :cond_7e
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public removeDualViewDisplay(Z)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_5b

    iget v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mInputMethodDisplayId:I

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_17

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiScreenManagerService;->setInputMethodDisplay(I)V

    :cond_17
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiScreenFeatures;->SAFE_DEBUG:Z

    if-eqz v0, :cond_39

    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeDualViewDisplay: callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mWaitingRemovedDisplayId:I

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    iput-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz p1, :cond_5b

    sget-object v0, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeDualViewDisplay: reconfigureDefaultDisplay"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDefaultDisplay()V

    :cond_5b
    return-void
.end method

.method public removeVirtualScreen()V
    .registers 7

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_44

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: removeVirtualScreen() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " requires PERMISSION_MANAGE_VIRTUAL_SCREEN permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_44
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_47
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_5c
    if-ltz v0, :cond_74

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    if-eqz v2, :cond_71

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getDisplayId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->onDisplayRemoved(I)V
    :try_end_71
    .catchall {:try_start_47 .. :try_end_71} :catchall_79

    :cond_71
    add-int/lit8 v0, v0, -0x1

    goto :goto_5c

    :cond_74
    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_79
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public removeVirtualScreen(Ljava/lang/String;I)V
    .registers 10

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_44

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: removeVirtualScreen() from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " requires PERMISSION_MANAGE_VIRTUAL_SCREEN permission"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_44
    iget-object v5, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_47
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_59
    .catchall {:try_start_47 .. :try_end_59} :catchall_96

    move-result-wide v2

    :try_start_5a
    sget-boolean v4, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v4, :cond_66

    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "removeVirtualScreen(): it is the one that created virtual screen"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->onDisplayRemoved(I)V
    :try_end_89
    .catchall {:try_start_5a .. :try_end_89} :catchall_91

    :try_start_89
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_96

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_91
    move-exception v4

    :try_start_92
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_96

    :catchall_96
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :cond_9c
    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method public setDualViewInputMethodEnabled(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewInputMethodEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewInputMethodEnabled:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mDualViewDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/am/MultiScreenManagerService;->getDualViewDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiScreenManagerService;->setInputMethodDisplay(I)V

    :goto_11
    return-void

    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiScreenManagerService;->setInputMethodDisplay(I)V

    goto :goto_11
.end method

.method public setInputMethodDisplay(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/MultiScreenManagerService;->mInputMethodDisplayId:I

    return-void
.end method

.method public setOffset(Landroid/os/IBinder;IIIZ)Z
    .registers 31

    const/4 v15, 0x1

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/MultiScreenManagerService;->mStartUpdateOffset:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    :cond_19
    sget-boolean v20, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_MULTISCREEN_PERFORMANCE:Z

    if-eqz v20, :cond_25

    sget-object v20, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v21, "3. Performance Test SetOffset Start"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_2c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v20, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_MULTISCREEN_PERFORMANCE:Z

    if-eqz v20, :cond_3f

    sget-object v20, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "3. Performance Test SetOffset In"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    move/from16 v7, p2

    const/4 v14, 0x0

    if-eqz p1, :cond_fc

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    if-eqz v14, :cond_50

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v20

    if-nez v20, :cond_a8

    :cond_50
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Invalid arguments. token="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, " : setOffset() from pid="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v22, ", uid="

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v20, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_2c .. :try_end_a1} :catchall_24a

    const/16 v20, 0x0

    monitor-exit v21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v20

    :cond_a8
    :try_start_a8
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v20, v0

    if-eqz v20, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_147

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v20

    if-nez v20, :cond_147

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_fc
    :goto_fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v16

    if-eqz v16, :cond_118

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_154

    :cond_118
    sget-object v20, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "setOffset(): stack d"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " is empty"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_140
    .catchall {:try_start_a8 .. :try_end_140} :catchall_24a

    const/16 v20, 0x0

    monitor-exit v21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v20

    :cond_147
    :try_start_147
    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v7

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result p2

    goto :goto_fc

    :cond_154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    if-eqz v7, :cond_1ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getDisplayRotation(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v17

    move/from16 v0, v17

    if-eq v8, v0, :cond_1ec

    sget-object v20, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "setOffset(): activity has the fixed rotation, rotation(d="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ")="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " rotation(d="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ")="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object v6

    if-eqz v6, :cond_1e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Lcom/android/server/am/ActivityManagerService;->updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z
    :try_end_1e5
    .catchall {:try_start_147 .. :try_end_1e5} :catchall_24a

    :cond_1e5
    const/16 v20, 0x0

    monitor-exit v21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v20

    :cond_1ec
    :try_start_1ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/VirtualScreen;

    if-nez v18, :cond_250

    if-eqz p1, :cond_238

    sget-object v20, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "setOffset(): it doesn\'t have baseDisplayId or virtualScreen is null, r="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", multiScreenAttrs="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22e
    .catchall {:try_start_1ec .. :try_end_22e} :catchall_245

    :goto_22e
    :try_start_22e
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_231
    .catchall {:try_start_22e .. :try_end_231} :catchall_24a

    const/16 v20, 0x0

    monitor-exit v21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v20

    :cond_238
    :try_start_238
    sget-object v20, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "setOffset(): virtualScreen is null. token=null"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_244
    .catchall {:try_start_238 .. :try_end_244} :catchall_245

    goto :goto_22e

    :catchall_245
    move-exception v20

    :try_start_246
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20
    :try_end_24a
    .catchall {:try_start_246 .. :try_end_24a} :catchall_24a

    :catchall_24a
    move-exception v20

    monitor-exit v21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v20

    :cond_250
    :try_start_250
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/VirtualScreen;->getOffsetUid()I

    move-result v13

    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/VirtualScreen;->isValid(IZ)Z
    :try_end_25f
    .catchall {:try_start_250 .. :try_end_25f} :catchall_245

    move-result v20

    if-nez v20, :cond_277

    const/4 v15, 0x0

    :cond_263
    :goto_263
    :try_start_263
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_266
    .catchall {:try_start_263 .. :try_end_266} :catchall_24a

    monitor-exit v21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    sget-boolean v20, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_MULTISCREEN_PERFORMANCE:Z

    if-eqz v20, :cond_276

    sget-object v20, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v21, "3. Performance Test SetOffset End"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_276
    return v15

    :cond_277
    :try_start_277
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/VirtualScreen;->getOffsetUid()I

    move-result v12

    if-eq v13, v12, :cond_286

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->assignLayersForAllDisplay()V

    :cond_286
    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/VirtualScreen;->isDefaultDisplay(II)Z

    move-result v20

    if-eqz v20, :cond_393

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/VirtualScreen;->setOffset(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MultiScreenManagerService;->updateVirtualScreenPosition()V

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/MultiScreenManagerService;->mStartUpdateOffset:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V
    :try_end_2b3
    .catchall {:try_start_277 .. :try_end_2b3} :catchall_245

    if-eqz v7, :cond_2c7

    const/16 v20, 0x0

    :try_start_2b7
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Lcom/android/server/am/MultiScreenManagerService;->moveVirtualScreenToDisplayLocked(II)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->assignLayersForAllDisplay()V
    :try_end_2c7
    .catchall {:try_start_2b7 .. :try_end_2c7} :catchall_388

    :cond_2c7
    :try_start_2c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/MultiScreenManagerService;->mStartUpdateOffset:Z

    :goto_2d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_341

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v19

    if-eqz v19, :cond_31e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/MultiScreenManagerService;->mOffsetStartTime:J

    sget-object v20, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "1. Performance Test Start"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v20, v0

    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZZ)V

    :cond_31e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MultiScreenManagerService;->updateVirtualScreenPosition()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_341
    if-eqz v19, :cond_263

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v4

    const/16 v20, -0x1

    move/from16 v0, v20

    if-gt v4, v0, :cond_354

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/VirtualScreen;->intersectsDefaultDisplay()Z

    move-result v20

    if-eqz v20, :cond_354

    const/4 v4, 0x0

    :cond_354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isDrawnAppWindow(I)Z

    move-result v20

    if-nez v20, :cond_413

    sget-object v20, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Did not drawn appwindow in display:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto/16 :goto_263

    :catchall_388
    move-exception v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v20

    :cond_393
    if-nez p3, :cond_397

    if-eqz p4, :cond_408

    :cond_397
    move/from16 v0, p2

    if-eq v0, v7, :cond_408

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/MultiScreenManagerService;->mOffsetMoveBackTime:J

    sget-object v20, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "2. Performance Test Start"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/MultiScreenManagerService;->mStartUpdateOffset:Z

    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/VirtualScreen;->setOffset(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MultiScreenManagerService;->updateVirtualScreenPosition()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V
    :try_end_3ce
    .catchall {:try_start_2c7 .. :try_end_3ce} :catchall_245

    :try_start_3ce
    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiScreenManagerService;->moveTaskBackToDisplayIfNeeded(Lcom/android/server/am/TaskRecord;ZZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->assignLayersForAllDisplay()V
    :try_end_3ea
    .catchall {:try_start_3ce .. :try_end_3ea} :catchall_3fd

    :try_start_3ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/MultiScreenManagerService;->mStartUpdateOffset:Z

    goto/16 :goto_2d8

    :catchall_3fd
    move-exception v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v20

    :cond_408
    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/VirtualScreen;->setOffset(II)V

    goto/16 :goto_2d8

    :cond_413
    const/16 v20, -0x1

    move/from16 v0, v20

    if-le v4, v0, :cond_263

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService;->isDrawnAppWindow(I)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_263

    sget-object v20, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Did not drawn appwindow in display:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_448
    .catchall {:try_start_3ea .. :try_end_448} :catchall_245

    const/4 v15, 0x0

    goto/16 :goto_263
.end method

.method public setSystemService(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/am/MultiScreenManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mContext:Landroid/content/Context;

    const v1, 0x10c0003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setVirtualScreenBound(ILandroid/graphics/Rect;)Z
    .registers 5

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p2}, Lcom/android/server/am/VirtualScreen;->setScreenSize(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    return v1

    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iput-object p1, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public shouldRotateScreenshotSurface(I)Z
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/MultiScreenManagerService;->getDualViewDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->isExternalDisplayConnected()Z

    move-result v0

    if-nez v0, :cond_16

    if-nez p1, :cond_16

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_16
    return v2
.end method

.method public startActivity(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)I
    .registers 36

    if-nez p2, :cond_c

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startActivity: Invalid intent"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    return v3

    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v29

    sget-boolean v3, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v3, :cond_3c

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startActivity: intent "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " by pid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    monitor-enter v31

    :try_start_43
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v5, -0x1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getLaunchParams()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->getDisplayId()I

    move-result v5

    if-eqz p3, :cond_82

    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v27

    :goto_57
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_87

    sget-object v3, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "display doesn\'t exist!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_43 .. :try_end_7c} :catchall_120

    const/4 v3, -0x1

    monitor-exit v31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_82
    :try_start_82
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v27

    goto :goto_57

    :cond_87
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MultiScreenManagerService;->mExternalScreen:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/am/VirtualScreen;

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/multiscreen/MultiScreenLaunchParams;->getFlags()I

    move-result v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/VirtualScreen;-><init>(Lcom/android/server/am/MultiScreenManagerService;ILandroid/hardware/display/VirtualDisplay;Landroid/graphics/Rect;I)V

    invoke-virtual {v9, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    const-string/jumbo v12, "VirtualScreenManager"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    move/from16 v7, v29

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_de

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_de

    const-string/jumbo v3, "content"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v3, v4, v0}, Lcom/android/server/am/ActivityManagerService;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v11

    :cond_de
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual/range {v27 .. v27}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v21

    const-string/jumbo v26, "MultiScreen_startActivity"

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v10, p2

    invoke-virtual/range {v6 .. v26}, Lcom/android/server/am/ActivityStarter;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)I

    move-result v30

    if-gez v30, :cond_11b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/MultiScreenManagerService;->isVirtualScreen(I)Z

    move-result v3

    if-eqz v3, :cond_11b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiScreenManagerService;->removeVirtualScreen(Ljava/lang/String;I)V
    :try_end_11b
    .catchall {:try_start_82 .. :try_end_11b} :catchall_120

    :cond_11b
    monitor-exit v31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :catchall_120
    move-exception v3

    monitor-exit v31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public startDrag(Landroid/os/IBinder;I)Z
    .registers 9

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    if-eqz p1, :cond_6b

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-nez v2, :cond_52

    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid arguments. token="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " : startDrag() from pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_70

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_52
    :try_start_52
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->multiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    invoke-virtual {v4}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/MultiScreenManagerService;->isVirtualScreen(I)Z

    move-result v4

    invoke-virtual {v2, p1, p2, v4}, Lcom/android/server/wm/WindowManagerService;->startDragVirtualScreen(Landroid/os/IBinder;IZ)Z
    :try_end_65
    .catchall {:try_start_52 .. :try_end_65} :catchall_70

    move-result v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_6b
    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :catchall_70
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method systemReady()V
    .registers 3

    new-instance v0, Lcom/samsung/android/multiscreen/MultiScreenSettings;

    iget-object v1, p0, Lcom/android/server/am/MultiScreenManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiscreen/MultiScreenSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mMultiScreenSettings:Lcom/samsung/android/multiscreen/MultiScreenSettings;

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mMultiScreenSettings:Lcom/samsung/android/multiscreen/MultiScreenSettings;

    invoke-virtual {v0, p0}, Lcom/samsung/android/multiscreen/MultiScreenSettings;->setOnSettingChangedListener(Lcom/samsung/android/multiscreen/MultiScreenSettings$OnSettingChangedListener;)V

    iget-object v0, p0, Lcom/android/server/am/MultiScreenManagerService;->mMultiScreenSettings:Lcom/samsung/android/multiscreen/MultiScreenSettings;

    invoke-virtual {v0}, Lcom/samsung/android/multiscreen/MultiScreenSettings;->init()V

    return-void
.end method

.method public unBindVirtualScreen()Z
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    sget-object v2, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unBindVirtualScreen() There wasn\'t Main Virtual Screen."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_1a
    sget-boolean v2, Lcom/android/server/am/MultiScreenManagerService;->DEBUG:Z

    if-eqz v2, :cond_37

    sget-object v2, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unBindVirtualScreen() pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    iget-object v3, p0, Lcom/android/server/am/MultiScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenByPid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiScreenManagerService;->unBindVirtualScreenLocked(I)Z
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_56

    move-result v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_56
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public updateVirtualScreenPosition()V
    .registers 16

    const/4 v14, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/MultiScreenManagerService;->clearVirtualScreenPosition()V

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_10
    if-ltz v1, :cond_ce

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreens:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/VirtualScreen;

    if-eqz v3, :cond_48

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0, v13, v2}, Lcom/android/server/am/MultiScreenManagerService;->getVirtualScreenPosition(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_30
    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->isDrawnAppWindow(I)Z

    move-result v4

    if-nez v4, :cond_4b

    iput-boolean v12, p0, Lcom/android/server/am/MultiScreenManagerService;->mReadyToUpdateOffset:Z

    :cond_40
    :goto_40
    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v3, v4}, Lcom/android/server/am/VirtualScreen;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    :cond_48
    :goto_48
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_4b
    iget-wide v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mOffsetStartTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_40

    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "1. Performance Test End : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/am/MultiScreenManagerService;->mOffsetStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v10, p0, Lcom/android/server/am/MultiScreenManagerService;->mOffsetStartTime:J

    goto :goto_40

    :cond_74
    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v0

    if-gt v0, v14, :cond_81

    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->intersectsDefaultDisplay()Z

    move-result v4

    if-eqz v4, :cond_81

    const/4 v0, 0x0

    :cond_81
    if-le v0, v14, :cond_48

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, v0, v13, v2}, Lcom/android/server/am/MultiScreenManagerService;->getVirtualScreenPosition(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_93

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_93
    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_48

    iget-object v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->isDrawnAppWindow(I)Z

    move-result v4

    if-nez v4, :cond_a4

    iput-boolean v12, p0, Lcom/android/server/am/MultiScreenManagerService;->mReadyToUpdateOffset:Z

    goto :goto_48

    :cond_a4
    iget-wide v4, p0, Lcom/android/server/am/MultiScreenManagerService;->mOffsetMoveBackTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_48

    sget-object v4, Lcom/android/server/am/MultiScreenManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "2. Performance Test End : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/am/MultiScreenManagerService;->mOffsetMoveBackTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v10, p0, Lcom/android/server/am/MultiScreenManagerService;->mOffsetMoveBackTime:J

    goto/16 :goto_48

    :cond_ce
    return-void
.end method
