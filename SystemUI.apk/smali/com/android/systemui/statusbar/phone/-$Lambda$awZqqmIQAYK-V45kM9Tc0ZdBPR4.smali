.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$awZqqmIQAYK-V45kM9Tc0ZdBPR4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/net/Uri;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$awZqqmIQAYK-V45kM9Tc0ZdBPR4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->lambda$-com_android_systemui_statusbar_phone_NavigationBarInflaterView_4156(Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$awZqqmIQAYK-V45kM9Tc0ZdBPR4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$awZqqmIQAYK-V45kM9Tc0ZdBPR4;->$m$0(Landroid/net/Uri;)V

    return-void
.end method
