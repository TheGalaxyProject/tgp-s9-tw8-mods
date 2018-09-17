.class public final Landroid/support/v4/content/IntentCompat;
.super Ljava/lang/Object;
.source "IntentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/IntentCompat$IntentCompatApi15Impl;,
        Landroid/support/v4/content/IntentCompat$IntentCompatBaseImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/content/IntentCompat$IntentCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/content/IntentCompat$IntentCompatApi15Impl;

    invoke-direct {v0}, Landroid/support/v4/content/IntentCompat$IntentCompatApi15Impl;-><init>()V

    sput-object v0, Landroid/support/v4/content/IntentCompat;->IMPL:Landroid/support/v4/content/IntentCompat$IntentCompatBaseImpl;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroid/support/v4/content/IntentCompat$IntentCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/content/IntentCompat$IntentCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/content/IntentCompat;->IMPL:Landroid/support/v4/content/IntentCompat$IntentCompatBaseImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
