.class Lcom/android/systemui/qs/customize/SecQSCustomizer$5;
.super Ljava/lang/Object;
.source "SecQSCustomizer.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get0(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v4

    if-nez v4, :cond_b

    return v5

    :cond_b
    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    packed-switch v0, :pswitch_data_136

    :cond_27
    :goto_27
    :pswitch_27
    return v3

    :pswitch_28
    const-string/jumbo v4, "SecQSCustomizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_DROP mWhereAmI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v6}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get11(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4, v7}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-set1(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap3(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    goto :goto_27

    :pswitch_53
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a03e1

    if-ne v4, v5, :cond_8e

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get11(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v4

    const/16 v5, 0x1388

    if-ne v4, v5, :cond_8e

    const-string/jumbo v4, "SecQSCustomizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTIVE TO AVAILABLE mWhereAmI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v6}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get11(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v5, 0x3e8

    invoke-static {v4, v5, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap0(Lcom/android/systemui/qs/customize/SecQSCustomizer;II)V

    goto :goto_27

    :cond_8e
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a03e0

    if-ne v4, v5, :cond_ca

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get11(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v4

    const/16 v5, 0x1770

    if-ne v4, v5, :cond_ca

    const-string/jumbo v4, "SecQSCustomizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AVAILABLE TO ACTIVEmWhereAmI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v6}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get11(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v5, 0x7d0

    invoke-static {v4, v5, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap0(Lcom/android/systemui/qs/customize/SecQSCustomizer;II)V

    goto/16 :goto_27

    :cond_ca
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0223

    if-ne v4, v5, :cond_dc

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v5, 0xcc

    invoke-static {v4, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap2(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V

    goto/16 :goto_27

    :cond_dc
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0222

    if-ne v4, v5, :cond_ee

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v5, 0xcb

    invoke-static {v4, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap2(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V

    goto/16 :goto_27

    :cond_ee
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap1(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)V

    goto/16 :goto_27

    :pswitch_f5
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-set1(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z

    :pswitch_fa
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap6(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    goto/16 :goto_27

    :pswitch_101
    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get6(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string/jumbo v4, "SecQSCustomizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_DRAG_ENDED mWhereAmI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v6}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get11(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap3(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4, v7}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-set1(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z

    goto/16 :goto_27

    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_f5
        :pswitch_27
        :pswitch_28
        :pswitch_101
        :pswitch_53
        :pswitch_fa
    .end packed-switch
.end method
