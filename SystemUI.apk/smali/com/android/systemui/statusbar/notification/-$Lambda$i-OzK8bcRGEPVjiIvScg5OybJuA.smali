.class final synthetic Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/graphics/Palette$Filter;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I[F)Z
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->lambda$-com_android_systemui_statusbar_notification_MediaNotificationProcessor_2612(I[F)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final isAllowed(I[F)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;->$m$0(I[F)Z

    move-result v0

    return v0
.end method
