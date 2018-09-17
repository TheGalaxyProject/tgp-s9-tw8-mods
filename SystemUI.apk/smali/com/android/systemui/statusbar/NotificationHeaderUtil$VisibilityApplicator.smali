.class Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibilityApplicator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Z)V
    .registers 4

    if-eqz p2, :cond_8

    const/16 v0, 0x8

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method
