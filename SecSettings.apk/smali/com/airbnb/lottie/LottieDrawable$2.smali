.class Lcom/airbnb/lottie/LottieDrawable$2;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->playAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;

.field final synthetic val$resetProgress:Z


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Z)V
    .registers 3

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$2;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieDrawable$2;->val$resetProgress:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .registers 4

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$2;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable$2;->val$resetProgress:Z

    # invokes: Lcom/airbnb/lottie/LottieDrawable;->playAnimation(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->access$200(Lcom/airbnb/lottie/LottieDrawable;Z)V

    return-void
.end method
