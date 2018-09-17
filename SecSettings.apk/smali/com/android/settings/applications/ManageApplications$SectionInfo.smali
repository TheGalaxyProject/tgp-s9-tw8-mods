.class Lcom/android/settings/applications/ManageApplications$SectionInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SectionInfo"
.end annotation


# instance fields
.field final label:Ljava/lang/String;

.field final position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$SectionInfo;->label:Ljava/lang/String;

    iput p2, p0, Lcom/android/settings/applications/ManageApplications$SectionInfo;->position:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$SectionInfo;->label:Ljava/lang/String;

    return-object v0
.end method
