.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$g4t5va-_Nubr04_mSy2SuJPRZB0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$g4t5va-_Nubr04_mSy2SuJPRZB0;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->lambda$-com_android_systemui_statusbar_phone_PhoneStatusBarView_21120(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$g4t5va-_Nubr04_mSy2SuJPRZB0;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$g4t5va-_Nubr04_mSy2SuJPRZB0;->$m$0()V

    return-void
.end method
