.class Lcom/android/systemui/ViewInvertHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewInvertHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ViewInvertHelper;

.field final synthetic val$invert:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/ViewInvertHelper;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/ViewInvertHelper$2;->this$0:Lcom/android/systemui/ViewInvertHelper;

    iput-boolean p2, p0, Lcom/android/systemui/ViewInvertHelper$2;->val$invert:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    iget-boolean v1, p0, Lcom/android/systemui/ViewInvertHelper$2;->val$invert:Z

    if-nez v1, :cond_25

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/android/systemui/ViewInvertHelper$2;->this$0:Lcom/android/systemui/ViewInvertHelper;

    invoke-static {v1}, Lcom/android/systemui/ViewInvertHelper;->-get1(Lcom/android/systemui/ViewInvertHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/android/systemui/ViewInvertHelper$2;->this$0:Lcom/android/systemui/ViewInvertHelper;

    invoke-static {v1}, Lcom/android/systemui/ViewInvertHelper;->-get1(Lcom/android/systemui/ViewInvertHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_25
    return-void
.end method
