.class public Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;
.super Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;
.source "CellLayoutTaskbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnContextClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$2;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$3;
    }
.end annotation


# static fields
.field private static final HOTSEAT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DEBUGGABLE:Z

.field private final HOVER_DETECT_TIME_MS:I

.field private mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

.field private mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mAeroWindowRect:Landroid/graphics/Rect;

.field private mBinding:Z

.field private mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

.field private final mHandler:Landroid/os/Handler;

.field private mHasEnded:Z

.field private mHoveredIconRect:Landroid/graphics/Rect;

.field private mIsHorizontalOrder:Z

.field private final mItemViewBuilder:Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;

.field private mLastTouchDownPoint:Landroid/graphics/Point;

.field private mMaxCellCount:I

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

.field private mRemoveEmptySpacePosted:Z

.field private mReorderPosted:Z

.field private mRepeatCallingAnimation:Z

.field private mShowAeroWindowRunnable:Ljava/lang/Runnable;

.field private mShowHotseatTitle:Z

.field private mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mLastTouchDownPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Landroid/telephony/PhoneStateListener;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mShowHotseatTitle:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)Landroid/telephony/TelephonyManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRemoveEmptySpacePosted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderPosted:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->focusRunningItem(IZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setAeroWindowRect(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setLastTouchDownPoint(II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->startInCallUIAnimation(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->DEBUGGABLE:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mLastTouchDownPoint:Landroid/graphics/Point;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->HOVER_DETECT_TIME_MS:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mItemViewBuilder:Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHasEnded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderPosted:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRemoveEmptySpacePosted:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mBinding:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->DEBUGGABLE:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mLastTouchDownPoint:Landroid/graphics/Point;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->HOVER_DETECT_TIME_MS:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mItemViewBuilder:Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHasEnded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderPosted:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRemoveEmptySpacePosted:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mBinding:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->DEBUGGABLE:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mLastTouchDownPoint:Landroid/graphics/Point;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->HOVER_DETECT_TIME_MS:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mItemViewBuilder:Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHasEnded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderPosted:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRemoveEmptySpacePosted:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mBinding:Z

    return-void
.end method

.method private addRunningItem(IILandroid/content/ComponentName;ZLandroid/app/ActivityManager$TaskDescription;)V
    .registers 14

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v4

    if-eqz v4, :cond_4d

    const-string/jumbo v4, "[DS]CellLayoutTaksBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addRunningItem:: taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", ComponentName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", canAddToShorcut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", taskDesc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    sget-object v4, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_RUNNING_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    const/4 v5, 0x0

    invoke-direct {v1, v4, p3, v5}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;Landroid/content/ComponentName;Z)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-eq v4, p2, :cond_66

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    :cond_66
    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getTitleAndIcon(Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    const-string/jumbo v4, "[DS]CellLayoutTaksBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addRunningItem:: item.mIconBitmap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "item.mTitle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_eb

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getApplicationIconFromDb(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v2, :cond_d1

    invoke-virtual {p5}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v2

    :cond_d1
    if-nez v0, :cond_df

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v4, p5, v5}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getIconFromTaskDescription(Landroid/content/Context;Landroid/app/ActivityManager$TaskDescription;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_df
    if-eqz v0, :cond_e5

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUsingTaskDescription:Z

    :cond_e5
    if-eqz v2, :cond_eb

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUsingTaskDescription:Z

    :cond_eb
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_113

    const-string/jumbo v4, "[DS]CellLayoutTaksBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addRunningItem:: This item doesn\'t have icon!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->usingFallbackIcon:Z

    :cond_113
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_11d

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_11d
    const-wide/16 v4, -0x67

    iput-wide v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    iput p1, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    iput-boolean p4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCanAddToShortcut:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->makeEmptySpace()I

    move-result v4

    iput v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->addItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    return-void
.end method

.method private addShortcutByBixby(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .registers 12

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v5

    if-eqz v5, :cond_2d

    const-string/jumbo v5, "[DS]CellLayoutTaksBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addAppShortcutFromBixby():: ComponentName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", UserHandle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/4 v1, 0x0

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    sget-object v5, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-direct {v1, v5, p1, v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;Landroid/content/ComponentName;Z)V

    iput-object p2, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    const-wide/16 v6, -0x67

    iput-wide v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->makeEmptySpace()I

    move-result v5

    iput v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v6, v7}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getTitleAndIcon(Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_86

    const-string/jumbo v5, "[DS]CellLayoutTaksBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addShortcutItemFromBixby:: This item doesn\'t have icon!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->usingFallbackIcon:Z

    :cond_86
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v5, :cond_90

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_90
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->addItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-wide v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->container:J

    iget v8, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    invoke-static {v5, v1, v6, v7, v8}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;JI)V

    :cond_9f
    if-eqz v0, :cond_a2

    :goto_a1
    return v3

    :cond_a2
    move v3, v4

    goto :goto_a1
.end method

.method private findSameComponentShortcutApp(ILandroid/content/ComponentName;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;
    .registers 8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v3, :cond_29

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunningAppItem()Z

    move-result v4

    if-nez v4, :cond_2a

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v4, p1, :cond_2a

    move-object v0, v2

    :cond_29
    return-object v0

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private focusRunningItem(IZ)V
    .registers 12

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getRunningItemList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    const/4 v0, 0x0

    iget v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    if-ne v5, p1, :cond_58

    iget-boolean v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningFocused:Z

    if-nez v5, :cond_22

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningFocused:Z

    const/4 v0, 0x1

    :cond_22
    :goto_22
    if-eqz v0, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v4, :cond_6c

    iget-boolean v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningFocused:Z

    if-eqz v5, :cond_60

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsOverScrollViewSize:Z

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsLayoutRTL:Z

    if-nez v5, :cond_44

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getLeft()I

    move-result v5

    if-nez v5, :cond_44

    iget v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-nez v5, :cond_9

    :cond_44
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsLayoutRTL:Z

    if-eqz v5, :cond_52

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getRight()I

    move-result v5

    if-nez v5, :cond_52

    iget v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-nez v5, :cond_9

    :cond_52
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5, v8, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->moveScrollPosition(ZLandroid/view/View;)V

    goto :goto_9

    :cond_58
    iget-boolean v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningFocused:Z

    if-eqz v5, :cond_22

    iput-boolean v8, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningFocused:Z

    const/4 v0, 0x1

    goto :goto_22

    :cond_60
    if-eqz p2, :cond_9

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsOverScrollViewSize:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v5, v8, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->moveScrollPosition(ZLandroid/view/View;)V

    goto :goto_9

    :cond_6c
    const-string/jumbo v5, "[DS]CellLayoutTaksBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "focusRunningTaskApp:: Cannot find this item\'s view for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_8c
    return-void
.end method

.method private isInsideAeroWindow(II)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_10

    move-result v0

    :cond_e
    monitor-exit v2

    return v0

    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private normalizeContents(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v3, "[DS]CellLayoutTaksBar"

    const-string/jumbo v4, "normalizeContents"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_19
    if-ltz v1, :cond_2d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget v3, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-eq v3, v1, :cond_2a

    iput v1, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    :cond_2d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_38

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    :cond_38
    return-void
.end method

.method private removeShortcutByBixby(Ljava/lang/String;)I
    .registers 11

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v6

    if-eqz v6, :cond_21

    const-string/jumbo v6, "[DS]CellLayoutTaksBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeShortcutFromBixby():: pkgName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v4

    const/4 v0, 0x0

    add-int/lit8 v1, v4, -0x1

    :goto_2b
    if-ltz v1, :cond_40

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v3, :cond_71

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    move-object v0, v3

    :cond_40
    if-eqz v0, :cond_74

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v6

    if-eqz v6, :cond_62

    const-string/jumbo v6, "[DS]CellLayoutTaksBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeShortcutFromBixby():: removing pkgName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    :cond_6d
    :goto_6d
    if-eqz v2, :cond_70

    const/4 v5, 0x1

    :cond_70
    return v5

    :cond_71
    add-int/lit8 v1, v1, -0x1

    goto :goto_2b

    :cond_74
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v6

    if-eqz v6, :cond_6d

    const-string/jumbo v6, "[DS]CellLayoutTaksBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeShortcutFromBixby():: no shortcut pkgName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method

.method private resetRunningAppItems()V
    .registers 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_29

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunningAppItem()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    :cond_20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_23
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->updateShortcutItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;IZ)V

    goto :goto_20

    :cond_29
    return-void
.end method

.method private setAeroWindowRect(Landroid/view/View;)V
    .registers 10

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    const/4 v1, 0x2

    :try_start_4
    new-array v0, v1, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    aget v5, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowRect:Landroid/graphics/Rect;
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_28

    monitor-exit v2

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setLastTouchDownPoint(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mLastTouchDownPoint:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mLastTouchDownPoint:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private showAeroWindow(Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;)V
    .registers 13

    const v10, 0x10502b6

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_AERO_FEATURE()Z

    move-result v4

    if-eqz v4, :cond_3a

    const-string/jumbo v4, "[DS]CellLayoutTaksBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AERO] showAeroWindow taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mAeroWindow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    const/4 v4, 0x2

    new-array v2, v4, [I

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Rect;

    aget v5, v2, v7

    aget v6, v2, v9

    aget v7, v2, v7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v2, v9

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHoveredIconRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mShowAeroWindowRunnable:Ljava/lang/Runnable;

    if-nez v4, :cond_64

    new-instance v4, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$7;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mShowAeroWindowRunnable:Ljava/lang/Runnable;

    :cond_64
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    if-eqz v4, :cond_6b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeAeroWindow()V

    :cond_6b
    new-instance v4, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsHorizontalOrder:Z

    invoke-virtual {v4, v5, p0, v1, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->makeAeroWindow(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070050

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7e8

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x108

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsHorizontalOrder:Z

    if-eqz v4, :cond_fe

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHoveredIconRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x53

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_da
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->dismiss()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$8;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$8;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mShowAeroWindowRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_fe
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHoveredIconRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x35

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_da
.end method

.method private startInCallUIAnimation(Landroid/view/View;)V
    .registers 12

    const-wide/16 v8, 0xc8

    const/4 v6, 0x2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string/jumbo v3, "[DS]CellLayoutTaksBar"

    const-string/jumbo v4, "startInCallUIAnimation()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_52

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1b1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_5a

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v6, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$11;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_52
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateRunningItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;ILandroid/app/ActivityManager$TaskDescription;)V
    .registers 15

    const/4 v10, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getApplicationIconFromDb(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_32

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-object v8, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-static {v7, p3, v8}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getIconFromTaskDescription(Landroid/content/Context;Landroid/app/ActivityManager$TaskDescription;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_32
    if-nez v2, :cond_38

    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v2

    :cond_38
    if-eqz v1, :cond_f8

    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    :cond_3d
    :goto_3d
    if-eqz v2, :cond_ff

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_42
    :goto_42
    if-nez v3, :cond_46

    if-eqz v4, :cond_67

    :cond_46
    const/4 v0, 0x1

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-object v9, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v8, v9}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v5, v8, v9}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getTitleAndIcon(Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eqz v3, :cond_61

    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_61
    if-eqz v4, :cond_67

    iget-object v7, v5, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_67
    if-eqz v0, :cond_129

    if-eqz v3, :cond_106

    if-eqz v4, :cond_106

    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUsingTaskDescription:Z

    :goto_70
    iget-object v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_9a

    const-string/jumbo v7, "[DS]CellLayoutTaksBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateRunningItem:: This item doesn\'t have icon!!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-boolean v10, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->usingFallbackIcon:Z

    :cond_9a
    iget-object v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v7, :cond_a6

    iget-object v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_a6
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v6, :cond_10a

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v7

    if-eqz v7, :cond_f1

    const-string/jumbo v7, "[DS]CellLayoutTaksBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateRunningItem:: taskId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", taskDesc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", needToSetDefaultIcon="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", needToSetDefaultLabel="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f1
    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->applyBaseItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->invalidate()V

    :cond_f7
    :goto_f7
    return-void

    :cond_f8
    iget-boolean v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUsingTaskDescription:Z

    if-eqz v7, :cond_3d

    const/4 v3, 0x1

    goto/16 :goto_3d

    :cond_ff
    iget-boolean v7, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUsingTaskDescription:Z

    if-eqz v7, :cond_42

    const/4 v4, 0x1

    goto/16 :goto_42

    :cond_106
    iput-boolean v10, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUsingTaskDescription:Z

    goto/16 :goto_70

    :cond_10a
    const-string/jumbo v7, "[DS]CellLayoutTaksBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateRunningItem:: Cannot find this item\'s view for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    :cond_129
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v7

    if-eqz v7, :cond_f7

    const-string/jumbo v7, "[DS]CellLayoutTaksBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateRunningItem:: There is no update for taskid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7
.end method

.method private updateShortcutItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;IZ)V
    .registers 10

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string/jumbo v2, "[DS]CellLayoutTaksBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateShortcutItem:: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", canAddToShorcut="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    iget v3, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-virtual {v2, v3, p2, v5, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->updateRunningTaskPosition(IIII)V

    iput p2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    iput-boolean p3, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mCanAddToShortcut:Z

    const/4 v2, -0x1

    if-ne p2, v2, :cond_91

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mUsingTaskDescription:Z

    if-eqz v2, :cond_91

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getTitleAndIcon(Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_85

    const-string/jumbo v2, "[DS]CellLayoutTaksBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addRunningItem:: This item doesn\'t have icon!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->usingFallbackIcon:Z

    :cond_85
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_91

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_91
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v1, :cond_a2

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->applyBaseItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->invalidate()V

    :goto_a1
    return-void

    :cond_a2
    const-string/jumbo v2, "[DS]CellLayoutTaksBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateShortcutItem:: Cannot find this item\'s view for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1
.end method


# virtual methods
.method public addAppShortcutByBixby(Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getComponentNameFromPkg(Ljava/lang/String;Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->addShortcutByBixby(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v1

    :goto_d
    return v1

    :cond_e
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v2

    if-eqz v2, :cond_39

    const-string/jumbo v2, "[DS]CellLayoutTaksBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addAppShortcutByBixby():: pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", compName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public addItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z
    .registers 6

    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addItem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->addItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsOverScrollViewSize:Z

    if-eqz v1, :cond_39

    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v1, :cond_39

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunningAppItem()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->moveScrollPosition(ZLandroid/view/View;)V

    :cond_39
    return v0
.end method

.method public addRunningTaskApp(IILandroid/content/ComponentName;Landroid/app/ActivityManager$TaskDescription;)V
    .registers 12

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string/jumbo v0, "[DS]CellLayoutTaksBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addRunningTaskApp():: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isAvailableUser(I)Z

    move-result v0

    if-nez v0, :cond_71

    const-string/jumbo v0, "[DS]CellLayoutTaksBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addRunningTaskApp() This user is not available!!!:: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_71
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.app.spage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    const-string/jumbo v0, "[DS]CellLayoutTaksBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addRunningTaskApp() Bixby home is not available!!!:: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mBixbyHomeTaskID:I

    return-void

    :cond_b3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->findMainActivityWithCategoryLauncher(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_be

    const/4 v4, 0x0

    move-object v3, p3

    :cond_be
    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->findSameComponentShortcutApp(ILandroid/content/ComponentName;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v6

    if-nez v6, :cond_d9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->addRunningItem(IILandroid/content/ComponentName;ZLandroid/app/ActivityManager$TaskDescription;)V

    :goto_cb
    const-string/jumbo v0, "103"

    const-string/jumbo v1, "1503"

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d9
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_eb

    iget v0, v6, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    if-eq v0, p1, :cond_eb

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->addRunningItem(IILandroid/content/ComponentName;ZLandroid/app/ActivityManager$TaskDescription;)V

    goto :goto_cb

    :cond_eb
    invoke-direct {p0, v6, p1, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->updateShortcutItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;IZ)V

    goto :goto_cb
.end method

.method public beginBind(I)V
    .registers 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mBinding:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAnimateChildInstantly:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsHorizontalOrder:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setGridSize(II)V

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setGridSize(II)V

    goto :goto_c
.end method

.method public bindHomeItemsRemoved(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    goto :goto_4

    :cond_14
    return-void
.end method

.method public bindHomeItemsUpdated(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    instance-of v7, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v7, :cond_8

    move-object v2, v3

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-ne v0, v2, :cond_1f

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v6

    iget-object v7, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_46

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPkgResCache()Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->setIcon(Landroid/graphics/Bitmap;)V

    :cond_46
    iget-object v7, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-nez v7, :cond_4f

    const-string/jumbo v7, ""

    iput-object v7, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    :cond_4f
    iget v7, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    iput v7, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    const/4 v5, 0x0

    if-eqz v6, :cond_68

    move-object v7, v6

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->applyBaseItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    check-cast v6, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->refreshBadge()V

    :cond_68
    if-nez v5, :cond_6d

    const-string/jumbo v5, ""

    :cond_6d
    iget-object v7, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskBarModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V

    goto :goto_1f

    :cond_7d
    return-void
.end method

.method public bindTaskbarItems(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeAllViewsInLayout()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->normalizeContents(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->beginBind(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    if-le v2, v3, :cond_17

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-ge v0, v2, :cond_4e

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    const-string/jumbo v3, "[DS]CellLayoutTaksBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bindTaskbarItems :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-gez v3, :cond_48

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getChildCount()I

    move-result v3

    iput v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    :cond_48
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->addItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_4e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->endBind()V

    return-void
.end method

.method public checkSameComponentAppExisted(ILandroid/content/ComponentName;)Z
    .registers 8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_23

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v1, :cond_24

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v4, p1, :cond_24

    const/4 v3, 0x1

    :cond_23
    return v3

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public checkSameComponentShortcutExisted(ILandroid/content/ComponentName;)Z
    .registers 8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_29

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunningAppItem()Z

    move-result v4

    if-nez v4, :cond_2a

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v4, p1, :cond_2a

    const/4 v3, 0x1

    :cond_29
    return v3

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public countSameComponentApp(ILandroid/content/ComponentName;)I
    .registers 8

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v3, :cond_27

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v2, :cond_24

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v4, p1, :cond_24

    add-int/lit8 v0, v0, 0x1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_27
    return v0
.end method

.method public createShortcut(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d004e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->applyBaseItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setContextClickable(Z)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    return-object v0
.end method

.method public dismissAeroWindow()V
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_AERO_FEATURE()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "[DS]CellLayoutTaksBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[AERO] dismissAeroWindow mAeroWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mShowAeroWindowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->dismiss()V

    :cond_33
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHoveredIconRect:Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindowRect:Landroid/graphics/Rect;

    return-void
.end method

.method public endBind()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mBinding:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAnimateChildInstantly:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeEmptySpace()V

    return-void
.end method

.method existsEmptyCell()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method findAllOccupiedCells()[Z
    .registers 9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCellCount()I

    move-result v0

    new-array v3, v0, [Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getChildrenLayout()Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPosition()I

    move-result v4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v5

    if-eqz v5, :cond_58

    const-string/jumbo v5, "[DS]CellLayoutTaksBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "findAllOccupied :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  pos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    if-ltz v4, :cond_10

    if-ge v4, v0, :cond_10

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    goto :goto_10

    :cond_60
    return-object v3
.end method

.method public findSameTaskRunningApp(I)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;
    .registers 7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v3, :cond_1d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1e

    iget v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    if-ne v4, p1, :cond_1e

    move-object v0, v2

    :cond_1d
    return-object v0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public focusRunningTaskApp(IILandroid/content/ComponentName;ILandroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)V
    .registers 11

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v1

    if-eqz v1, :cond_41

    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "focusRunningTaskApp():: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", cn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", taskType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const/4 v0, 0x0

    if-nez p6, :cond_53

    if-nez p4, :cond_49

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->addRunningTaskApp(IILandroid/content/ComponentName;Landroid/app/ActivityManager$TaskDescription;)V

    :cond_49
    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    const-string/jumbo v2, "focusRunningTaskApp()::Focus  Not in the list!! maybe launcher or other!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_53
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->focusRunningItem(IZ)V

    return-void
.end method

.method getCellCount()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsHorizontalOrder:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCountX()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCountY()I

    move-result v0

    goto :goto_8
.end method

.method public getContainerType()J
    .registers 3

    const-wide/16 v0, -0x67

    return-wide v0
.end method

.method public getRunningItemList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    instance-of v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v3, :cond_d

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_d

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2c
    return-object v2
.end method

.method public isFull()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    if-lt v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public makeEmptySpace()I
    .registers 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v1, :cond_d

    add-int/lit8 v0, v0, -0x1

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCountX()I

    move-result v1

    if-ge v1, v0, :cond_55

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v1

    if-eqz v1, :cond_33

    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeEmptySpace count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsHorizontalOrder:Z

    if-eqz v1, :cond_49

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCountX()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    if-ge v1, v2, :cond_42

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setGridSize(II)V

    :cond_42
    :goto_42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCellCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCountY()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    if-ge v1, v2, :cond_42

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setGridSize(II)V

    goto :goto_42

    :cond_55
    const/4 v1, -0x1

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x0

    instance-of v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isContextMenuOpen()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v1, :cond_48

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getLaunchIntent(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->dismissAeroWindow()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->isTopTask(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeFreeformTask(I)V

    :cond_3b
    :goto_3b
    const-string/jumbo v2, "103"

    const-string/jumbo v3, "1506"

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    :goto_48
    return-void

    :cond_49
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->moveToFront(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string/jumbo v2, "[DS]CellLayoutTaksBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "This taskID is not running!! Remove and startActivity!: taskID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Component="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v2, p1, v0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_3b

    :cond_85
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->semSetHoverPopupType(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v2, p1, v0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    const-string/jumbo v2, "103"

    const-string/jumbo v3, "1504"

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48
.end method

.method public onContextClick(Landroid/view/View;)Z
    .registers 10

    const/4 v7, 0x1

    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    const/4 v0, 0x2

    new-array v6, v0, [I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunningAppItem()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v1, 0x3

    :goto_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const/4 v2, 0x0

    aget v2, v6, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, -0x40800000    # -1.0f

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->showContextMenu(IFFLcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Landroid/view/View;)V

    :cond_31
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const v2, 0x7f0a0504

    invoke-virtual {v0, v2, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeAllExcept(IZ)V

    return v7

    :cond_3a
    const/4 v1, 0x4

    goto :goto_1e

    :cond_3c
    const/4 v1, 0x5

    goto :goto_1e
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 14

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_HIERARCHY()Z

    move-result v3

    if-eqz v3, :cond_28

    const-string/jumbo v3, "[DS]CellLayoutTaksBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[DRAG_HIERARCHY]onDragEvent :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/DragEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_30
    instance-of v3, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    if-nez v3, :cond_3f

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_3f

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_30

    :cond_3f
    if-eqz v2, :cond_47

    instance-of v3, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_66

    :cond_47
    const-string/jumbo v3, "[DS]CellLayoutTaksBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " parent is not instance of TaskBarView!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->toStringDragEvnet(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_66
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_93

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    :goto_72
    if-nez v1, :cond_96

    const-string/jumbo v3, "[DS]CellLayoutTaksBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDragEvent dragState is null!! return false. event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/DragEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_93
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->dragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    goto :goto_72

    :cond_96
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v3

    if-eqz v3, :cond_dc

    const-string/jumbo v3, "[DS]CellLayoutTaksBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->toStringDragEvnet(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " :: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    iget-wide v6, v5, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  itemType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItemType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  dragOrigin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dc
    if-ne v0, v9, :cond_e2

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHasEnded:Z

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDrawDragOutlines:Z

    :cond_e2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHasEnded:Z

    if-eqz v3, :cond_e7

    return v8

    :cond_e7
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mSecretItem:Z

    if-eqz v3, :cond_ee

    return v8

    :cond_ee
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDrawDragOutlines:Z

    if-eq v0, v11, :cond_f4

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    :cond_f4
    const/4 v3, 0x5

    if-ne v0, v3, :cond_fd

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->isFull()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDisabled:Z

    :cond_fd
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDisabled:Z

    if-eqz v3, :cond_105

    if-ne v0, v11, :cond_10d

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDisabled:Z

    :cond_105
    packed-switch v0, :pswitch_data_138

    :goto_108
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    :cond_10d
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    :pswitch_112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->cancelRealTimeReorder()V

    goto :goto_108

    :pswitch_116
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDrawDragOutlines:Z

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHasEnded:Z

    invoke-virtual {p1}, Landroid/view/DragEvent;->getResult()Z

    move-result v3

    if-eqz v3, :cond_123

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->onDelete()V

    :cond_123
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->onEnd()V

    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeEmptySpace()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->removeDraggingView()V

    goto :goto_108

    :pswitch_133
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderImmediately:Z

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDrawDragOutlines:Z

    goto :goto_108

    :pswitch_data_138
    .packed-switch 0x4
        :pswitch_116
        :pswitch_133
        :pswitch_112
    .end packed-switch
.end method

.method public onFailedDrop(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    iget v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mOriginalScreen:I

    :cond_a
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    :cond_e
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->makeEmptySpace()I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->realTimeReorder(I)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->setPosition(I)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->onFailedDrop(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)V

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v2, 0x2002

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->isContextMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    return v3

    :cond_15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    instance-of v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v2, :cond_85

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    const/16 v2, 0x9

    if-ne v0, v2, :cond_58

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_AERO_FEATURE()Z

    move-result v2

    if-eqz v2, :cond_52

    const-string/jumbo v2, "[DS]CellLayoutTaksBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[AERO] ACTION_HOVER_ENTER mTaskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->showAeroWindow(Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;)V

    return v5

    :cond_58
    if-ne v0, v4, :cond_ba

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->isInsideAeroWindow(II)Z

    move-result v2

    if-nez v2, :cond_84

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->dismissAeroWindow()V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_AERO_FEATURE()Z

    move-result v2

    if-eqz v2, :cond_84

    const-string/jumbo v2, "[DS]CellLayoutTaksBar"

    const-string/jumbo v3, "[AERO] ACTION_HOVER_EXIT from AppIconView. remove aero window"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    return v5

    :cond_85
    instance-of v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    if-eqz v2, :cond_ba

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    if-eqz v2, :cond_ba

    if-ne v0, v4, :cond_ba

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHoveredIconRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_a7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHoveredIconRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b9

    :cond_a7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->dismissAeroWindow()V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_AERO_FEATURE()Z

    move-result v2

    if-eqz v2, :cond_b9

    const-string/jumbo v2, "[DS]CellLayoutTaksBar"

    const-string/jumbo v3, "[AERO] ACTION_HOVER_EXIT from AeroWindow. remove aero window"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b9
    return v5

    :cond_ba
    return v3
.end method

.method protected onMeasure(II)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsOverScrollViewSize:Z

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->onMeasure(II)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsOverScrollViewSize:Z

    if-eq v0, v1, :cond_10

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsOverScrollViewSize:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateScrollStatus(Z)V

    :cond_10
    return-void
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->onViewAddedToLayout(Landroid/view/View;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mBinding:Z

    if-eqz v2, :cond_1f

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v2, :cond_1f

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    iput v2, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->screen:I

    :cond_1f
    return-void
.end method

.method realTimeReorder()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    const-string/jumbo v2, "realTimeReorder"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHasEnded:Z

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->findFirstEmptySpace()I

    move-result v1

    if-ne v1, v3, :cond_1d

    return-void

    :cond_1d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->hasAnimatingChild()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderPosted:Z

    if-eqz v1, :cond_28

    return-void

    :cond_28
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderPosted:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$4;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_35
    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTargetCell:I

    if-ge v1, v5, :cond_3b

    iput v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTargetCell:I

    :cond_3b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->findFirstEmptySpace()I

    move-result v0

    if-eq v0, v3, :cond_47

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCountX()I

    move-result v1

    if-lt v0, v1, :cond_4a

    :cond_47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->makeEmptySpace()I

    :cond_4a
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->realTimeReorder()V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderImmediately:Z

    return-void
.end method

.method public realTimeReorder(I)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->hasAnimatingChild()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderPosted:Z

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mReorderPosted:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$5;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;I)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_19
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->realTimeReorder(I)V

    return-void
.end method

.method public refreshAllRunningTaskList()V
    .registers 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "[DS]CellLayoutTaksBar"

    const-string/jumbo v1, "refreshAllRunningTaskList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->resetRunningAppItems()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$9;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public removeAeroWindow()V
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_AERO_FEATURE()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "[DS]CellLayoutTaksBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[AERO] removeAeroWindow mAeroWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mShowAeroWindowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->removeView(Landroid/view/View;)Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mAeroWindow:Lcom/android/systemui/statusbar/phone/taskbar/views/AeroWindowLayout;

    :cond_3e
    return-void
.end method

.method public removeAppShortcutByBixby(Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeShortcutByBixby(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeEmptySpace()V
    .registers 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->hasAnimatingChild()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRemoveEmptySpacePosted:Z

    if-eqz v1, :cond_c

    return-void

    :cond_c
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRemoveEmptySpacePosted:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$6;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_19
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHiddenItem:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v1, :cond_25

    add-int/lit8 v0, v0, -0x1

    :cond_25
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getCellCount()I

    move-result v1

    if-ne v1, v0, :cond_2c

    return-void

    :cond_2c
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_DRAG_INFO()Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeEmptySpace count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    if-ge v1, v0, :cond_52

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    :cond_52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->closeLayoutGap()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsHorizontalOrder:Z

    if-eqz v1, :cond_5d

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setGridSize(II)V

    :goto_5c
    return-void

    :cond_5d
    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setGridSize(II)V

    goto :goto_5c
.end method

.method public removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDisabled:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeEmptySpace()V

    :cond_10
    const-string/jumbo v1, "com.samsung.android.incallui"

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_25
    return v0
.end method

.method public removeRunningTaskApp(I)V
    .registers 6

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeRunningTaskApp():: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->findSameTaskRunningApp(I)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->dismissAeroWindow()V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getItemType()Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_RUNNING_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    if-ne v1, v2, :cond_35

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    :goto_34
    return-void

    :cond_35
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->updateShortcutItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;IZ)V

    goto :goto_34

    :cond_3b
    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeRunningTaskApp()::Stop  Not in the list!!  taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public removeRunningTaskAppForPkgRemoved(Ljava/lang/String;)V
    .registers 9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v3, :cond_23

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunningAppItem()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    move-object v0, v2

    :cond_23
    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v4

    if-eqz v4, :cond_45

    const-string/jumbo v4, "[DS]CellLayoutTaksBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeRunningTaskAppForPkgRemoved():: pkgName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->dismissAeroWindow()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    :cond_4b
    return-void

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public setupTaskBar(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;Z)V
    .registers 6

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsHorizontalOrder:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    if-gez v0, :cond_1d

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMaxCellCount:I

    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_66

    const v0, 0x7f050029

    :goto_32
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mShowHotseatTitle:Z

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->setMultiWindowManager(Lcom/samsung/android/multiwindow/MultiWindowManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setGridSize(II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mTaskBarView:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPkgResCache()Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mItemViewBuilder:Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->setItemViewBuilder(Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;)V

    return-void

    :cond_66
    const v0, 0x7f05002a

    goto :goto_32
.end method

.method public updateBadgeCount(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mBadgeCount:I

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->refreshBadge()V

    goto :goto_8

    :cond_3c
    return-void
.end method

.method public updateInCallUI(I)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string/jumbo v0, "[DS]CellLayoutTaksBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInCallUI() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    packed-switch p1, :pswitch_data_42

    :goto_25
    return-void

    :pswitch_26
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    if-eqz v0, :cond_2d

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    goto :goto_25

    :cond_2d
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$10;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_25

    :pswitch_3c
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    goto :goto_25

    :pswitch_3f
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mRepeatCallingAnimation:Z

    goto :goto_25

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3f
        :pswitch_26
    .end packed-switch
.end method

.method public updateRunningTaskApp(ILandroid/app/ActivityManager$TaskDescription;)V
    .registers 7

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRunningTaskApp():: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", taskDesc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->findSameTaskRunningApp(I)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->updateRunningItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;ILandroid/app/ActivityManager$TaskDescription;)V

    :goto_34
    return-void

    :cond_35
    const-string/jumbo v1, "[DS]CellLayoutTaksBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRunningTaskApp()::Update  Not in the list!! taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V
    .registers 9

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDisabled:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->getItem()Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->MENU_APP:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    if-ne v1, v2, :cond_15

    return-void

    :cond_15
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mDragState:Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/DragState;->mDragOrigin:Lcom/android/systemui/statusbar/phone/taskbar/data/DragOrigin;

    if-nez v1, :cond_1c

    return-void

    :cond_1c
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    return-void
.end method
