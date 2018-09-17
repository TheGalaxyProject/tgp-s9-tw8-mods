.class public Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DividerPopupVisibleEvent.java"


# instance fields
.field private flag:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;->flag:I

    return-void
.end method


# virtual methods
.method public isRemove()Z
    .registers 3

    iget v0, p0, Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isVisible()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;->flag:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
