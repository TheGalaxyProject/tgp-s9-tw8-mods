.class final Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;
.super Landroid/util/FloatProperty;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lcom/android/systemui/statusbar/phone/NotificationPanelView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Float;
    .registers 3

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->get(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-wrap0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;->setValue(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V

    return-void
.end method
