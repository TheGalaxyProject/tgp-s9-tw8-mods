.class abstract Lcom/android/systemui/statusbar/phone/taskbar/data/UpdateableShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "UpdatableShadowBuilder.java"


# instance fields
.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public clearSurface()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    :cond_c
    return-void
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method
