.class Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;
.super Ljava/lang/Object;
.source "AdditionalInformationSettings.java"

# interfaces
.implements Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDrag(I)Z
    .registers 5

    const/4 v1, 0x0

    if-lez p1, :cond_25

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getCount()I

    move-result v2

    if-gt p1, v2, :cond_25

    const/4 v0, 0x1

    :goto_10
    if-eqz v0, :cond_24

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get2(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getDragEnabled()Z

    move-result v1

    :cond_24
    return v1

    :cond_25
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public canDrop(II)Z
    .registers 5

    if-lez p1, :cond_20

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getCount()I

    move-result v1

    if-gt p1, v1, :cond_20

    if-lez p2, :cond_20

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getCount()I

    move-result v1

    if-gt p2, v1, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d

    :cond_20
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public dropDone(II)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->-get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->moveItem(II)V

    return-void
.end method
