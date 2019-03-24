package model;

public class Sushi {
    private int id;
    private String name;
    private String photoPath;
    private String description;
    private String fullDescription;

    public Sushi() {
    }

    public Sushi(int id, String name, String photoPath, String description, String fullDescription) {
        this.id = id;
        this.name = name;
        this.photoPath = photoPath;
        this.description = description;
        this.fullDescription = fullDescription;
    }

    public String getFullDescription() {
        return fullDescription;
    }

    public void setFullDescription(String fullDescription) {
        this.fullDescription = fullDescription;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhotoPath() {
        return photoPath;
    }

    public void setPhotoPath(String photoPath) {
        this.photoPath = photoPath;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Sushi{" + "id=" + id + ", name=" + name + ", photoPath=" + photoPath + ", description=" + description + ", fullDescription=" + fullDescription + '}';
    }
}
