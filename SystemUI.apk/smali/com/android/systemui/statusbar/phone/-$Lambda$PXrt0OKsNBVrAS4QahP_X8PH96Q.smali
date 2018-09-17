.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$PXrt0OKsNBVrAS4QahP_X8PH96Q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$PXrt0OKsNBVrAS4QahP_X8PH96Q;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->-com_android_systemui_statusbar_phone_DarkIconDispatcherImpl-mthref-0(F)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$PXrt0OKsNBVrAS4QahP_X8PH96Q;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final applyDarkIntensity(F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$PXrt0OKsNBVrAS4QahP_X8PH96Q;->$m$0(F)V

    return-void
.end method
