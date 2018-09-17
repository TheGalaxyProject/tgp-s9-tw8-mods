.class final Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;
.super Ljava/lang/Object;
.source "NotificationMenuRow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationMenuRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForDrag"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/NotificationMenuRow;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationMenuRow;Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;-><init>(Lcom/android/systemui/statusbar/NotificationMenuRow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const-wide v8, 0x3fd999999999999aL    # 0.4

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-get3(Lcom/android/systemui/statusbar/NotificationMenuRow;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-wrap1(Lcom/android/systemui/statusbar/NotificationMenuRow;)F

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-get2(Lcom/android/systemui/statusbar/NotificationMenuRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float v2, v3, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuVisible()Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-wrap0(Lcom/android/systemui/statusbar/NotificationMenuRow;)Z

    move-result v3

    if-eqz v3, :cond_46

    :cond_35
    float-to-double v4, v0

    float-to-double v6, v1

    mul-double/2addr v6, v8

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_46

    cmpg-float v3, v0, v2

    if-gez v3, :cond_46

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-wrap2(Lcom/android/systemui/statusbar/NotificationMenuRow;F)V

    :cond_45
    :goto_45
    return-void

    :cond_46
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->isMenuVisible()Z

    move-result v3

    if-eqz v3, :cond_45

    float-to-double v4, v0

    float-to-double v6, v1

    mul-double/2addr v6, v8

    cmpg-double v3, v4, v6

    if-gez v3, :cond_45

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$CheckForDrag;->this$0:Lcom/android/systemui/statusbar/NotificationMenuRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationMenuRow;->-wrap3(Lcom/android/systemui/statusbar/NotificationMenuRow;)V

    goto :goto_45
.end method
