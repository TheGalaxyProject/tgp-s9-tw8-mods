.class final synthetic Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$5;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$-com_android_systemui_keyguard_KeyguardViewMediator_48060()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$5;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/-$Lambda$-f994CCMz_70U6Oz06JHEMP788Q$5;->$m$0()V

    return-void
.end method
