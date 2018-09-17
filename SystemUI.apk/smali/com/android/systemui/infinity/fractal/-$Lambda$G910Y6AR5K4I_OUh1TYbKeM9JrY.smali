.class final synthetic Lcom/android/systemui/infinity/fractal/-$Lambda$G910Y6AR5K4I_OUh1TYbKeM9JrY;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/infinity/fractal/-$Lambda$G910Y6AR5K4I_OUh1TYbKeM9JrY;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/infinity/fractal/ElementAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/fractal/ElementAnimator;->lambda$-com_android_systemui_infinity_fractal_ElementAnimator_8554(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/infinity/fractal/-$Lambda$G910Y6AR5K4I_OUh1TYbKeM9JrY;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/fractal/-$Lambda$G910Y6AR5K4I_OUh1TYbKeM9JrY;->$m$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method
