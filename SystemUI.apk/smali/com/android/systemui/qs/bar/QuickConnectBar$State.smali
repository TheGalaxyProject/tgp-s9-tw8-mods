.class public Lcom/android/systemui/qs/bar/QuickConnectBar$State;
.super Ljava/lang/Object;
.source "QuickConnectBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/QuickConnectBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public mCollapsed:Landroid/widget/RemoteViews;

.field public mExpanded:Landroid/widget/RemoteViews;

.field public mIsExpanded:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui/qs/bar/QuickConnectBar$State;Z)Z
    .registers 6

    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1c
    iget-boolean v1, p1, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mIsExpanded:Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mIsExpanded:Z

    if-ne v1, v2, :cond_51

    iget-object v1, p1, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_51

    iget-object v1, p1, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    :goto_38
    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mIsExpanded:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mIsExpanded:Z

    if-eqz p2, :cond_42

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_46

    :cond_42
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    iput-object v1, p1, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    :cond_46
    if-eqz p2, :cond_4c

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_50

    :cond_4c
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    iput-object v1, p1, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    :cond_50
    return v0

    :cond_51
    const/4 v0, 0x1

    goto :goto_38
.end method

.method public getRemoteViews()Landroid/widget/RemoteViews;
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mIsExpanded:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    goto :goto_6
.end method

.method public isEmptyRemoteView()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method
