.class final synthetic Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/ZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$3;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->lambda$-com_android_systemui_volume_ZenModePanel_9415(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$3;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$3;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/volume/-$Lambda$ORWkWvklx2FcycYdCeM5VfNFDMc$3;->$m$0()V

    return-void
.end method
