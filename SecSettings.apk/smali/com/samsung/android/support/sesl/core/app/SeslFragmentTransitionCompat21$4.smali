.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$4;
.super Ljava/lang/Object;
.source "SeslFragmentTransitionCompat21.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nameOverrides:Ljava/util/Map;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$4;->val$nameOverrides:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_7
    if-lt v0, v3, :cond_a

    return-void

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1b
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$4;->val$nameOverrides:Ljava/util/Map;

    # invokes: Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->findKeyForValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->access$000(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_18
.end method
