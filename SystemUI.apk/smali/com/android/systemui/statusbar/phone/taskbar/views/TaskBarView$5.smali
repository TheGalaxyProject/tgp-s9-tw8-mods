.class Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;
.super Ljava/lang/Object;
.source "TaskBarView.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setup(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastPos:I

.field private lastScrollUpdate:J

.field private startPos:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->lastPos:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->lastScrollUpdate:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->startPos:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->lastScrollUpdate:J

    return-wide p1
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V
    .registers 5

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->lastScrollUpdate:J

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->startPos:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->lastPos:I

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .registers 10

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->lastScrollUpdate:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    iput p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->startPos:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->startPos:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->updateScrollingState(ZI)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22
    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->lastPos:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->lastScrollUpdate:J

    return-void
.end method
