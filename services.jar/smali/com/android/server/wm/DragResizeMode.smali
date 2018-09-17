.class Lcom/android/server/wm/DragResizeMode;
.super Ljava/lang/Object;
.source "DragResizeMode.java"


# static fields
.field static final DRAG_RESIZE_MODE_DOCKED_DIVIDER:I = 0x1

.field static final DRAG_RESIZE_MODE_FREEFORM:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isModeAllowedForStack(II)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1a

    return v1

    :pswitch_6
    const/4 v2, 0x2

    if-ne p0, v2, :cond_a

    :goto_9
    return v0

    :cond_a
    move v0, v1

    goto :goto_9

    :pswitch_c
    const/4 v2, 0x3

    if-eq p0, v2, :cond_11

    if-ne p0, v0, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    if-eqz p0, :cond_11

    const/4 v2, 0x5

    if-eq p0, v2, :cond_11

    move v0, v1

    goto :goto_11

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
