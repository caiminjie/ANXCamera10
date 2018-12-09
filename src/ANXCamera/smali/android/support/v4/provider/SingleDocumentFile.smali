.class Landroid/support/v4/provider/SingleDocumentFile;
.super Landroid/support/v4/provider/DocumentFile;
.source "SingleDocumentFile.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/support/v4/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .param p1, "parent"    # Landroid/support/v4/provider/DocumentFile;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 28
    invoke-direct {p0, p1}, Landroid/support/v4/provider/DocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;)V

    .line 29
    iput-object p2, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    .line 31
    return-void
.end method


# virtual methods
.method public canRead()Z
    .registers 3

    .line 80
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->canRead(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .registers 3

    .line 85
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->canWrite(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    .registers 3
    .param p1, "displayName"    # Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    .registers 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete()Z
    .registers 3

    .line 90
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->delete(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .registers 3

    .line 95
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 50
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3

    .line 55
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 45
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirectory()Z
    .registers 3

    .line 60
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .registers 3

    .line 65
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->isFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .registers 3

    .line 70
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->lastModified(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .registers 3

    .line 75
    iget-object v0, p0, Landroid/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/provider/DocumentsContractApi19;->length(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Landroid/support/v4/provider/DocumentFile;
    .registers 2

    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .registers 3
    .param p1, "displayName"    # Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
