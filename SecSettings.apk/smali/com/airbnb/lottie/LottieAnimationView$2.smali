.class Lcom/airbnb/lottie/LottieAnimationView$2;
.super Ljava/lang/Object;
.source "LottieAnimationView.java"

# interfaces
.implements Lcom/airbnb/lottie/OnCompositionLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic val$animationName:Ljava/lang/String;

.field final synthetic val$cacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->val$cacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    iput-object p3, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->val$animationName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .registers 5

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->val$cacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;->Strong:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->val$cacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;->Weak:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    if-eq v0, v1, :cond_1c

    :goto_c
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    return-void

    :cond_12
    # getter for: Lcom/airbnb/lottie/LottieAnimationView;->STRONG_REF_CACHE:Ljava/util/Map;
    invoke-static {}, Lcom/airbnb/lottie/LottieAnimationView;->access$100()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->val$animationName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_1c
    # getter for: Lcom/airbnb/lottie/LottieAnimationView;->WEAK_REF_CACHE:Ljava/util/Map;
    invoke-static {}, Lcom/airbnb/lottie/LottieAnimationView;->access$200()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView$2;->val$animationName:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c
.end method
