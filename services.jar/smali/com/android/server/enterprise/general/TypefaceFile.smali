.class public Lcom/android/server/enterprise/general/TypefaceFile;
.super Ljava/lang/Object;
.source "TypefaceFile.java"


# instance fields
.field private droidName:Ljava/lang/String;

.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceFile;->fileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceFile;->droidName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceFile;->fileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceFile;->droidName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/general/TypefaceFile;->fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/enterprise/general/TypefaceFile;->droidName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDroidName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceFile;->droidName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public setDroidName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/general/TypefaceFile;->droidName:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/general/TypefaceFile;->fileName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Filename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nDroidname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFile;->droidName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
