.class public Lcom/android/systemui/recents/RecentsDebugFlags$Static;
.super Ljava/lang/Object;
.source "RecentsDebugFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsDebugFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Static"
.end annotation


# static fields
.field public static final DisableBackgroundCache:Z = false

.field public static final EnableAffiliatedTaskGroups:Z = false

.field public static final EnableAllListShown:Z = true

.field public static final EnableAppList:Z = true

.field public static final EnableBixby:Z = true

.field public static final EnableBlacklist:Z

.field public static final EnableBugFix:Z = true

.field public static final EnableButtonsLayout:Z = true

.field public static final EnableCloseAllLayout:Z = true

.field public static final EnableCombinedTaskStack:Z

.field public static final EnableCustomCurve:Z = true

.field public static final EnableCustomDropLayout:Z = true

.field public static final EnableCustomLayout:Z = true

.field public static final EnableCustomTransition:Z = true

.field public static final EnableDesktopMode:Z = true

.field public static final EnableDropLaunchDebug:Z = false

.field private static final EnableFastToggleTimeout:Z = false

.field public static final EnableFreeformDropLayout:Z

.field public static final EnableKeyboardCover:Z

.field public static final EnableKnoxContainer:Z = true

.field public static final EnableKnoxLayout:Z = true

.field public static final EnableListLayout:Z = true

.field public static final EnableMockTaskGroups:Z = false

.field public static final EnableMockTasks:Z = false

.field public static final EnableMoreButton:Z = true

.field public static final EnableOpenTheme:Z = true

.field public static final EnableOpenThemeLayout:Z

.field private static final EnablePaging:Z = false

.field public static final EnablePairedTask:Z = true

.field public static final EnablePrimaryColorLayout:Z

.field public static final EnablePrivateMode:Z = true

.field public static final EnableRoundedCorner:Z = true

.field public static final EnableScreenPinningLayout:Z = true

.field public static final EnableScreenRatio:Z = true

.field public static final EnableSnapView:Z

.field public static final EnableSplitHelp:Z

.field public static final EnableSplitLayout:Z = true

.field public static final EnableStackActionButton:Z = false

.field public static final EnableTaskLock:Z = true

.field public static final EnableTaskLockHelp:Z

.field public static final EnableTransitionThumbnailDebugMode:Z = false

.field public static final EnableUPSM:Z = true

.field public static final MockTaskCount:I = 0x64

.field public static final MockTaskGroupsTaskCount:I = 0xc

.field public static final MockTasksPackageCount:I = 0x3

.field private static final SEP_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x320

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    div-int/lit8 v0, v0, 0x64

    sput v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->SEP_VERSION:I

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableKeyboardCover:Z

    sget-boolean v0, Lcom/android/systemui/Rune;->RECENTS_SUPPORT_SEC_FREEFORM:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    sget-boolean v0, Lcom/android/systemui/Rune;->RECENTS_SUPPORT_SNAP_VIEW:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    sget-boolean v0, Lcom/android/systemui/Rune;->RECENTS_SUPPORT_SEC_FREEFORM:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformDropLayout:Z

    sget-boolean v0, Lcom/android/systemui/Rune;->RECENTS_SUPPORT_BLACK_LIST:Z

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableBlacklist:Z

    sget v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->SEP_VERSION:I

    const/16 v3, 0x384

    if-lt v0, v3, :cond_3c

    move v0, v1

    :goto_25
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePrimaryColorLayout:Z

    if-eqz v0, :cond_3e

    move v0, v1

    :goto_2c
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableOpenThemeLayout:Z

    sget v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->SEP_VERSION:I

    if-lt v0, v4, :cond_40

    move v0, v1

    :goto_33
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitHelp:Z

    sget v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->SEP_VERSION:I

    if-lt v0, v4, :cond_42

    :goto_39
    sput-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTaskLockHelp:Z

    return-void

    :cond_3c
    move v0, v2

    goto :goto_25

    :cond_3e
    move v0, v2

    goto :goto_2c

    :cond_40
    move v0, v2

    goto :goto_33

    :cond_42
    move v1, v2

    goto :goto_39
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
