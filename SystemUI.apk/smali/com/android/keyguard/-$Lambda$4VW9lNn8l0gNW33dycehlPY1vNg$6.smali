.class final synthetic Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$6;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardPasswordView;

    iget v1, p0, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$6;->-$f0:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardPasswordView;->lambda$-com_android_keyguard_KeyguardPasswordView_6527(I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$6;->-$f0:I

    iput-object p2, p0, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$6;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$6;->$m$0()V

    return-void
.end method
