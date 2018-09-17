.class public Lcom/android/systemui/statusbar/DebugLogView;
.super Ljava/lang/Object;
.source "DebugLogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DebugLogView$1;,
        Lcom/android/systemui/statusbar/DebugLogView$2;,
        Lcom/android/systemui/statusbar/DebugLogView$3;,
        Lcom/android/systemui/statusbar/DebugLogView$4;
    }
.end annotation


# instance fields
.field private mAutoScroll:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mLogScrollView:Landroid/widget/ScrollView;

.field private mLogStringBuilder:Ljava/lang/StringBuilder;

.field private mLogTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/DebugLogView;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogView;->mAutoScroll:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/DebugLogView;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/DebugLogView;)Landroid/widget/ScrollView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogView;->mLogScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/DebugLogView;)Ljava/lang/StringBuilder;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogView;->mLogStringBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/DebugLogView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/DebugLogView;->mLogTextView:Landroid/widget/TextView;

    return-object v0
.end method
