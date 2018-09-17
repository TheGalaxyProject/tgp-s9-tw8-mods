.class final Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$3;
.super Ljava/lang/Object;
.source "CellLayoutTaskbar.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)I
    .registers 7

    const/4 v3, -0x1

    const/4 v0, 0x0

    iget v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    iget v2, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-ne v1, v2, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-ne v1, v3, :cond_10

    const/4 v0, 0x1

    goto :goto_9

    :cond_10
    iget v1, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-ne v1, v3, :cond_16

    const/4 v0, -0x1

    goto :goto_9

    :cond_16
    iget v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    iget v2, p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mScreen:I

    if-ge v1, v2, :cond_1e

    const/4 v0, -0x1

    goto :goto_9

    :cond_1e
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    check-cast p2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar$3;->compare(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)I

    move-result v0

    return v0
.end method
